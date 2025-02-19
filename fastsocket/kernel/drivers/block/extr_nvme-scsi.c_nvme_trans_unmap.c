
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sg_io_hdr {int dummy; } ;
struct scsi_unmap_parm_list {TYPE_1__* desc; int unmap_blk_desc_data_len; } ;
struct nvme_queue {int dummy; } ;
struct nvme_ns {int ns_id; struct nvme_dev* dev; } ;
struct nvme_dsm_range {scalar_t__ cattr; void* slba; void* nlb; } ;
struct nvme_dev {TYPE_3__* pci_dev; } ;
struct TYPE_5__ {void* attributes; void* nr; void* prp1; void* nsid; int opcode; } ;
struct nvme_command {TYPE_2__ dsm; } ;
typedef int dma_addr_t ;
typedef int c ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int slba; int nlb; } ;


 int EINVAL ;
 int ENOMEM ;
 int GET_U16_FROM_CDB (int *,int ) ;
 int GFP_KERNEL ;
 int NVME_DSMGMT_AD ;
 int NVME_IO_TIMEOUT ;
 int SNTI_TRANSLATION_SUCCESS ;
 int UNMAP_CDB_PARAM_LIST_LENGTH_OFFSET ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int ) ;
 struct nvme_dsm_range* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct nvme_dsm_range*,int ) ;
 struct nvme_queue* get_nvmeq (struct nvme_dev*) ;
 int kfree (struct scsi_unmap_parm_list*) ;
 struct scsi_unmap_parm_list* kmalloc (int,int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_cmd_dsm ;
 int nvme_submit_sync_cmd (struct nvme_queue*,struct nvme_command*,int *,int ) ;
 int nvme_trans_copy_from_user (struct sg_io_hdr*,struct scsi_unmap_parm_list*,int) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;
 int put_nvmeq (struct nvme_queue*) ;

__attribute__((used)) static int nvme_trans_unmap(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 *cmd)
{
 struct nvme_dev *dev = ns->dev;
 struct scsi_unmap_parm_list *plist;
 struct nvme_dsm_range *range;
 struct nvme_queue *nvmeq;
 struct nvme_command c;
 int i, nvme_sc, res = -ENOMEM;
 u16 ndesc, list_len;
 dma_addr_t dma_addr;

 list_len = GET_U16_FROM_CDB(cmd, UNMAP_CDB_PARAM_LIST_LENGTH_OFFSET);
 if (!list_len)
  return -EINVAL;

 plist = kmalloc(list_len, GFP_KERNEL);
 if (!plist)
  return -ENOMEM;

 res = nvme_trans_copy_from_user(hdr, plist, list_len);
 if (res != SNTI_TRANSLATION_SUCCESS)
  goto out;

 ndesc = be16_to_cpu(plist->unmap_blk_desc_data_len) >> 4;
 if (!ndesc || ndesc > 256) {
  res = -EINVAL;
  goto out;
 }

 range = dma_alloc_coherent(&dev->pci_dev->dev, ndesc * sizeof(*range),
       &dma_addr, GFP_KERNEL);
 if (!range)
  goto out;

 for (i = 0; i < ndesc; i++) {
  range[i].nlb = cpu_to_le32(be32_to_cpu(plist->desc[i].nlb));
  range[i].slba = cpu_to_le64(be64_to_cpu(plist->desc[i].slba));
  range[i].cattr = 0;
 }

 memset(&c, 0, sizeof(c));
 c.dsm.opcode = nvme_cmd_dsm;
 c.dsm.nsid = cpu_to_le32(ns->ns_id);
 c.dsm.prp1 = cpu_to_le64(dma_addr);
 c.dsm.nr = cpu_to_le32(ndesc - 1);
 c.dsm.attributes = cpu_to_le32(NVME_DSMGMT_AD);

 nvmeq = get_nvmeq(dev);
 put_nvmeq(nvmeq);

 nvme_sc = nvme_submit_sync_cmd(nvmeq, &c, ((void*)0), NVME_IO_TIMEOUT);
 res = nvme_trans_status_code(hdr, nvme_sc);

 dma_free_coherent(&dev->pci_dev->dev, ndesc * sizeof(*range),
       range, dma_addr);
 out:
 kfree(plist);
 return res;
}
