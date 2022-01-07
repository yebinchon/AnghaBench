
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int lun; int target; int bus; int devtype; } ;
struct ctlr_info {int ndevices; TYPE_1__* pdev; struct hpsa_scsi_dev_t** dev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int HPSA_MAX_DEVICES ;
 int dev_info (int *,char*,int ,int,int ,int ,int ) ;
 int scsi_device_type (int ) ;

__attribute__((used)) static void hpsa_scsi_remove_entry(struct ctlr_info *h, int hostno, int entry,
 struct hpsa_scsi_dev_t *removed[], int *nremoved)
{

 int i;
 struct hpsa_scsi_dev_t *sd;

 BUG_ON(entry < 0 || entry >= HPSA_MAX_DEVICES);

 sd = h->dev[entry];
 removed[*nremoved] = h->dev[entry];
 (*nremoved)++;

 for (i = entry; i < h->ndevices-1; i++)
  h->dev[i] = h->dev[i+1];
 h->ndevices--;
 dev_info(&h->pdev->dev, "%s device c%db%dt%dl%d removed.\n",
  scsi_device_type(sd->devtype), hostno, sd->bus, sd->target,
  sd->lun);
}
