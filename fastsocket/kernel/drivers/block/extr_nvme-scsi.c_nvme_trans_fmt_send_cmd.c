
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {size_t ns_id; int mode_select_block_len; scalar_t__ mode_select_num_blocks; struct nvme_dev* dev; } ;
struct nvme_id_ns {int flbas; size_t nlbaf; int ncap; TYPE_1__* lbaf; } ;
struct nvme_dev {TYPE_3__* pci_dev; } ;
struct TYPE_5__ {void* cdw10; void* nsid; int opcode; } ;
struct nvme_command {TYPE_2__ format; } ;
typedef int dma_addr_t ;
typedef int c ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int ds; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ILLEGAL_REQUEST ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_PARAMETER ;
 int SNTI_TRANSLATION_SUCCESS ;
 void* cpu_to_le32 (size_t) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_format_nvm ;
 int nvme_identify (struct nvme_dev*,size_t,int ,int ) ;
 int nvme_submit_admin_cmd (struct nvme_dev*,struct nvme_command*,int *) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_fmt_send_cmd(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 prot_info)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ns *id_ns;
 u8 i;
 u8 flbas, nlbaf;
 u8 selected_lbaf = 0xFF;
 u32 cdw10 = 0;
 struct nvme_command c;


 mem = dma_alloc_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
       &dma_addr, GFP_KERNEL);
 if (mem == ((void*)0)) {
  res = -ENOMEM;
  goto out;
 }

 nvme_sc = nvme_identify(dev, ns->ns_id, 0, dma_addr);
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_dma;
 if (nvme_sc) {
  res = nvme_sc;
  goto out_dma;
 }
 id_ns = mem;
 flbas = (id_ns->flbas) & 0x0F;
 nlbaf = id_ns->nlbaf;

 for (i = 0; i < nlbaf; i++) {
  if (ns->mode_select_block_len == (1 << (id_ns->lbaf[i].ds))) {
   selected_lbaf = i;
   break;
  }
 }
 if (selected_lbaf > 0x0F) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
    ILLEGAL_REQUEST, SCSI_ASC_INVALID_PARAMETER,
    SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
 }
 if (ns->mode_select_num_blocks != le64_to_cpu(id_ns->ncap)) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
    ILLEGAL_REQUEST, SCSI_ASC_INVALID_PARAMETER,
    SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
 }

 cdw10 |= prot_info << 5;
 cdw10 |= selected_lbaf & 0x0F;
 memset(&c, 0, sizeof(c));
 c.format.opcode = nvme_admin_format_nvm;
 c.format.nsid = cpu_to_le32(ns->ns_id);
 c.format.cdw10 = cpu_to_le32(cdw10);

 nvme_sc = nvme_submit_admin_cmd(dev, &c, ((void*)0));
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_dma;
 if (nvme_sc)
  res = nvme_sc;

 out_dma:
 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
     dma_addr);
 out:
 return res;
}
