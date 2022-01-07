
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_dev {TYPE_1__* bar; } ;
struct TYPE_2__ {int csts; } ;


 int NOT_READY ;
 int NO_SENSE ;
 int NVME_CSTS_RDY ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_LUN_NOT_READY ;
 int SNTI_TRANSLATION_SUCCESS ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int readl (int *) ;

__attribute__((used)) static int nvme_trans_test_unit_ready(struct nvme_ns *ns,
     struct sg_io_hdr *hdr,
     u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 struct nvme_dev *dev = ns->dev;

 if (!(readl(&dev->bar->csts) & NVME_CSTS_RDY))
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
         NOT_READY, SCSI_ASC_LUN_NOT_READY,
         SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
 else
  res = nvme_trans_completion(hdr, SAM_STAT_GOOD, NO_SENSE, 0, 0);

 return res;
}
