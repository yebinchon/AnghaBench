
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int dummy; } ;
typedef int __le32 ;


 int hpsa_set_bus_target_lun (struct hpsa_scsi_dev_t*,int,int,int) ;
 scalar_t__ is_ext_target (struct ctlr_info*,struct hpsa_scsi_dev_t*) ;
 scalar_t__ is_hba_lunid (int *) ;
 int is_logical_dev_addr_mode (int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void figure_bus_target_lun(struct ctlr_info *h,
 u8 *lunaddrbytes, struct hpsa_scsi_dev_t *device)
{
 u32 lunid = le32_to_cpu(*((__le32 *) lunaddrbytes));

 if (!is_logical_dev_addr_mode(lunaddrbytes)) {

  if (is_hba_lunid(lunaddrbytes))
   hpsa_set_bus_target_lun(device, 3, 0, lunid & 0x3fff);
  else

   hpsa_set_bus_target_lun(device, 2, -1, -1);
  return;
 }

 if (is_ext_target(h, device)) {




  hpsa_set_bus_target_lun(device,
   1, (lunid >> 16) & 0x3fff, lunid & 0x00ff);
  return;
 }
 hpsa_set_bus_target_lun(device, 0, 0, lunid & 0x3fff);
}
