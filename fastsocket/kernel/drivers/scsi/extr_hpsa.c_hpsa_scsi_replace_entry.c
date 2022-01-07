
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int target; int lun; int bus; int devtype; } ;
struct ctlr_info {TYPE_1__* pdev; struct hpsa_scsi_dev_t** dev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int HPSA_MAX_DEVICES ;
 int dev_info (int *,char*,int ,int,int ,int,int ) ;
 int scsi_device_type (int ) ;

__attribute__((used)) static void hpsa_scsi_replace_entry(struct ctlr_info *h, int hostno,
 int entry, struct hpsa_scsi_dev_t *new_entry,
 struct hpsa_scsi_dev_t *added[], int *nadded,
 struct hpsa_scsi_dev_t *removed[], int *nremoved)
{

 BUG_ON(entry < 0 || entry >= HPSA_MAX_DEVICES);
 removed[*nremoved] = h->dev[entry];
 (*nremoved)++;





 if (new_entry->target == -1) {
  new_entry->target = h->dev[entry]->target;
  new_entry->lun = h->dev[entry]->lun;
 }

 h->dev[entry] = new_entry;
 added[*nadded] = new_entry;
 (*nadded)++;
 dev_info(&h->pdev->dev, "%s device c%db%dt%dl%d changed.\n",
  scsi_device_type(new_entry->devtype), hostno, new_entry->bus,
   new_entry->target, new_entry->lun);
}
