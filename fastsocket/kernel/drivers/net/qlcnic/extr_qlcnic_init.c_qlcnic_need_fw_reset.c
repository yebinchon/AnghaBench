
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; scalar_t__ fw; scalar_t__ need_fw_reset; } ;


 int QLCNIC_FW_HANG ;
 scalar_t__ qlcnic_check_fw_hearbeat (struct qlcnic_adapter*) ;
 int qlcnic_rom_lock_recovery (struct qlcnic_adapter*) ;

int
qlcnic_need_fw_reset(struct qlcnic_adapter *adapter)
{
 if ((adapter->flags & QLCNIC_FW_HANG) ||
   qlcnic_check_fw_hearbeat(adapter)) {
  qlcnic_rom_lock_recovery(adapter);
  return 1;
 }

 if (adapter->need_fw_reset)
  return 1;

 if (adapter->fw)
  return 1;

 return 0;
}
