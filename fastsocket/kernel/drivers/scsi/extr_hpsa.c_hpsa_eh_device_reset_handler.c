
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct hpsa_scsi_dev_t {int scsi3addr; int lun; int target; int bus; } ;
struct ctlr_info {TYPE_2__* pdev; TYPE_1__* scsi_host; } ;
struct TYPE_6__ {struct hpsa_scsi_dev_t* hostdata; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int host_no; } ;


 int FAILED ;
 int SUCCESS ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 int hpsa_send_reset (struct ctlr_info*,int ) ;
 struct ctlr_info* sdev_to_hba (TYPE_3__*) ;
 scalar_t__ wait_for_device_to_become_ready (struct ctlr_info*,int ) ;

__attribute__((used)) static int hpsa_eh_device_reset_handler(struct scsi_cmnd *scsicmd)
{
 int rc;
 struct ctlr_info *h;
 struct hpsa_scsi_dev_t *dev;


 h = sdev_to_hba(scsicmd->device);
 if (h == ((void*)0))
  return FAILED;
 dev = scsicmd->device->hostdata;
 if (!dev) {
  dev_err(&h->pdev->dev, "hpsa_eh_device_reset_handler: "
   "device lookup failed.\n");
  return FAILED;
 }
 dev_warn(&h->pdev->dev, "resetting device %d:%d:%d:%d\n",
  h->scsi_host->host_no, dev->bus, dev->target, dev->lun);

 rc = hpsa_send_reset(h, dev->scsi3addr);
 if (rc == 0 && wait_for_device_to_become_ready(h, dev->scsi3addr) == 0)
  return SUCCESS;

 dev_warn(&h->pdev->dev, "resetting device failed.\n");
 return FAILED;
}
