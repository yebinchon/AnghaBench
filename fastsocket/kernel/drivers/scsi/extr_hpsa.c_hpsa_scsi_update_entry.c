
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int lun; int target; int bus; int devtype; int raid_level; } ;
struct ctlr_info {TYPE_2__* pdev; TYPE_1__** dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int raid_level; } ;


 int BUG_ON (int) ;
 int HPSA_MAX_DEVICES ;
 int dev_info (int *,char*,int ,int,int ,int ,int ) ;
 int scsi_device_type (int ) ;

__attribute__((used)) static void hpsa_scsi_update_entry(struct ctlr_info *h, int hostno,
 int entry, struct hpsa_scsi_dev_t *new_entry)
{

 BUG_ON(entry < 0 || entry >= HPSA_MAX_DEVICES);


 h->dev[entry]->raid_level = new_entry->raid_level;
 dev_info(&h->pdev->dev, "%s device c%db%dt%dl%d updated.\n",
  scsi_device_type(new_entry->devtype), hostno, new_entry->bus,
  new_entry->target, new_entry->lun);
}
