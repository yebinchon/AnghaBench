
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int lun; int* scsi3addr; int target; int bus; int devtype; } ;
struct ctlr_info {int ndevices; TYPE_1__* pdev; struct hpsa_scsi_dev_t** dev; } ;
struct TYPE_2__ {int dev; } ;


 int HPSA_MAX_DEVICES ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int,int ,int ,int) ;
 int dev_warn (int *,char*) ;
 scalar_t__ hpsa_find_target_lun (struct ctlr_info*,int*,int ,int *,int*) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,int*,int) ;
 int scsi_device_type (int ) ;

__attribute__((used)) static int hpsa_scsi_add_entry(struct ctlr_info *h, int hostno,
  struct hpsa_scsi_dev_t *device,
  struct hpsa_scsi_dev_t *added[], int *nadded)
{

 int n = h->ndevices;
 int i;
 unsigned char addr1[8], addr2[8];
 struct hpsa_scsi_dev_t *sd;

 if (n >= HPSA_MAX_DEVICES) {
  dev_err(&h->pdev->dev, "too many devices, some will be "
   "inaccessible.\n");
  return -1;
 }


 if (device->lun != -1)

  goto lun_assigned;





 if (device->scsi3addr[4] == 0) {

  if (hpsa_find_target_lun(h, device->scsi3addr,
   device->bus, &device->target, &device->lun) != 0)
   return -1;
  goto lun_assigned;
 }







 memcpy(addr1, device->scsi3addr, 8);
 addr1[4] = 0;
 for (i = 0; i < n; i++) {
  sd = h->dev[i];
  memcpy(addr2, sd->scsi3addr, 8);
  addr2[4] = 0;

  if (memcmp(addr1, addr2, 8) == 0) {
   device->bus = sd->bus;
   device->target = sd->target;
   device->lun = device->scsi3addr[4];
   break;
  }
 }
 if (device->lun == -1) {
  dev_warn(&h->pdev->dev, "physical device with no LUN=0,"
   " suspect firmware bug or unsupported hardware "
   "configuration.\n");
   return -1;
 }

lun_assigned:

 h->dev[n] = device;
 h->ndevices++;
 added[*nadded] = device;
 (*nadded)++;






  dev_info(&h->pdev->dev, "%s device c%db%dt%dl%d added.\n",
   scsi_device_type(device->devtype), hostno,
   device->bus, device->target, device->lun);
 return 0;
}
