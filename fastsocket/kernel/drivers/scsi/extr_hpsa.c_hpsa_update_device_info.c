
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_scsi_dev_t {unsigned char devtype; int raid_level; int device_id; int model; int vendor; int scsi3addr; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int OBDR_SIG_LEN ;
 size_t OBDR_SIG_OFFSET ;
 scalar_t__ OBDR_TAPE_INQ_SIZE ;
 int OBDR_TAPE_SIG ;
 int RAID_UNKNOWN ;
 unsigned char TYPE_DISK ;
 unsigned char TYPE_ROM ;
 int dev_err (int *,char*) ;
 int hpsa_get_device_id (struct ctlr_info*,unsigned char*,int ,int) ;
 int hpsa_get_raid_level (struct ctlr_info*,unsigned char*,int *) ;
 scalar_t__ hpsa_scsi_do_inquiry (struct ctlr_info*,unsigned char*,int ,unsigned char*,unsigned char) ;
 scalar_t__ is_logical_dev_addr_mode (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ strncmp (unsigned char*,int ,int ) ;

__attribute__((used)) static int hpsa_update_device_info(struct ctlr_info *h,
 unsigned char scsi3addr[], struct hpsa_scsi_dev_t *this_device,
 unsigned char *is_OBDR_device)
{






 unsigned char *inq_buff;
 unsigned char *obdr_sig;

 inq_buff = kzalloc((43 + (sizeof("$DR-10") - 1)), GFP_KERNEL);
 if (!inq_buff)
  goto bail_out;


 if (hpsa_scsi_do_inquiry(h, scsi3addr, 0, inq_buff,
  (unsigned char) (43 + (sizeof("$DR-10") - 1))) != 0) {

  dev_err(&h->pdev->dev,
   "hpsa_update_device_info: inquiry failed\n");
  goto bail_out;
 }

 this_device->devtype = (inq_buff[0] & 0x1f);
 memcpy(this_device->scsi3addr, scsi3addr, 8);
 memcpy(this_device->vendor, &inq_buff[8],
  sizeof(this_device->vendor));
 memcpy(this_device->model, &inq_buff[16],
  sizeof(this_device->model));
 memset(this_device->device_id, 0,
  sizeof(this_device->device_id));
 hpsa_get_device_id(h, scsi3addr, this_device->device_id,
  sizeof(this_device->device_id));

 if (this_device->devtype == TYPE_DISK &&
  is_logical_dev_addr_mode(scsi3addr))
  hpsa_get_raid_level(h, scsi3addr, &this_device->raid_level);
 else
  this_device->raid_level = RAID_UNKNOWN;

 if (is_OBDR_device) {



  obdr_sig = &inq_buff[43];
  *is_OBDR_device = (this_device->devtype == TYPE_ROM &&
     strncmp(obdr_sig, "$DR-10",
      (sizeof("$DR-10") - 1)) == 0);
 }

 kfree(inq_buff);
 return 0;

bail_out:
 kfree(inq_buff);
 return 1;
}
