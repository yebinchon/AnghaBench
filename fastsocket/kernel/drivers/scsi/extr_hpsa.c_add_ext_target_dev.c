
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hpsa_scsi_dev_t {unsigned char target; scalar_t__ lun; int bus; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int MAX_EXT_TARGETS ;
 int dev_warn (int *,char*) ;
 int hpsa_set_bus_target_lun (struct hpsa_scsi_dev_t*,int ,unsigned char,int ) ;
 scalar_t__ hpsa_update_device_info (struct ctlr_info*,unsigned char*,struct hpsa_scsi_dev_t*,int *) ;
 int is_ext_target (struct ctlr_info*,struct hpsa_scsi_dev_t*) ;
 scalar_t__ is_hba_lunid (unsigned char*) ;
 int is_logical_dev_addr_mode (int *) ;
 scalar_t__ is_scsi_rev_5 (struct ctlr_info*) ;
 int memset (unsigned char*,int ,int) ;
 int set_bit (unsigned char,unsigned long*) ;
 scalar_t__ test_bit (unsigned char,unsigned long*) ;

__attribute__((used)) static int add_ext_target_dev(struct ctlr_info *h,
 struct hpsa_scsi_dev_t *tmpdevice,
 struct hpsa_scsi_dev_t *this_device, u8 *lunaddrbytes,
 unsigned long lunzerobits[], int *n_ext_target_devs)
{
 unsigned char scsi3addr[8];

 if (test_bit(tmpdevice->target, lunzerobits))
  return 0;

 if (!is_logical_dev_addr_mode(lunaddrbytes))
  return 0;

 if (!is_ext_target(h, tmpdevice))
  return 0;

 if (tmpdevice->lun == 0)
  return 0;

 memset(scsi3addr, 0, 8);
 scsi3addr[3] = tmpdevice->target;
 if (is_hba_lunid(scsi3addr))
  return 0;

 if (is_scsi_rev_5(h))
  return 0;

 if (*n_ext_target_devs >= MAX_EXT_TARGETS) {
  dev_warn(&h->pdev->dev, "Maximum number of external "
   "target devices exceeded.  Check your hardware "
   "configuration.");
  return 0;
 }

 if (hpsa_update_device_info(h, scsi3addr, this_device, ((void*)0)))
  return 0;
 (*n_ext_target_devs)++;
 hpsa_set_bus_target_lun(this_device,
    tmpdevice->bus, tmpdevice->target, 0);
 set_bit(tmpdevice->target, lunzerobits);
 return 1;
}
