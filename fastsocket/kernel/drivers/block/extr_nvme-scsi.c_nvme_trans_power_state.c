
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_id_ctrl {int npss; } ;
struct nvme_dev {TYPE_1__* pci_dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ILLEGAL_REQUEST ;
 int NVME_FEAT_POWER_MGMT ;





 unsigned int POWER_STATE_0 ;
 int POWER_STATE_1 ;
 int POWER_STATE_2 ;
 int POWER_STATE_3 ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SNTI_TRANSLATION_SUCCESS ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 unsigned int max (int ,int) ;
 unsigned int min (int ,int) ;
 int nvme_identify (struct nvme_dev*,int ,int,int ) ;
 int nvme_set_features (struct nvme_dev*,int ,unsigned int,int ,int *) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_power_state(struct nvme_ns *ns, struct sg_io_hdr *hdr,
      u8 pc, u8 pcmod, u8 start)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ctrl *id_ctrl;
 int lowest_pow_st;
 unsigned ps_desired = 0;


 mem = dma_alloc_coherent(&dev->pci_dev->dev,
    sizeof(struct nvme_id_ctrl),
    &dma_addr, GFP_KERNEL);
 if (mem == ((void*)0)) {
  res = -ENOMEM;
  goto out;
 }
 nvme_sc = nvme_identify(dev, 0, 1, dma_addr);
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_dma;
 if (nvme_sc) {
  res = nvme_sc;
  goto out_dma;
 }
 id_ctrl = mem;
 lowest_pow_st = id_ctrl->npss - 1;

 switch (pc) {
 case 128:

  if (pcmod == 0 && start == 0x1)
   ps_desired = POWER_STATE_0;
  if (pcmod == 0 && start == 0x0)
   ps_desired = lowest_pow_st;
  break;
 case 132:

  if (pcmod == 0)
   ps_desired = POWER_STATE_0;
  break;
 case 131:


  if (pcmod == 0x0)
   ps_desired = min(POWER_STATE_1, (lowest_pow_st - 1));
  else if (pcmod == 0x1)
   ps_desired = min(POWER_STATE_2, (lowest_pow_st - 1));
  else if (pcmod == 0x2)
   ps_desired = min(POWER_STATE_3, (lowest_pow_st - 1));
  break;
 case 129:

  if (pcmod == 0x0)
   ps_desired = max(0, (lowest_pow_st - 2));
  else if (pcmod == 0x1)
   ps_desired = max(0, (lowest_pow_st - 1));
  break;
 case 130:
 default:
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
    ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
    SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  break;
 }
 nvme_sc = nvme_set_features(dev, NVME_FEAT_POWER_MGMT, ps_desired, 0,
        ((void*)0));
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_dma;
 if (nvme_sc)
  res = nvme_sc;
 out_dma:
 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ctrl), mem,
     dma_addr);
 out:
 return res;
}
