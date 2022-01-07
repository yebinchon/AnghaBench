
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 scalar_t__ qlcnic_83xx_check_hw_status (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_enter_failed_state (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_idc_enter_ready_state (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_idc_restart_hw (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_idc_update_audit_reg (struct qlcnic_adapter*,int,int ) ;
 int qlcnic_83xx_idc_update_drv_presence_reg (struct qlcnic_adapter*,int,int ) ;
 scalar_t__ qlcnic_load_fw_file ;

__attribute__((used)) static int qlcnic_83xx_idc_cold_state_handler(struct qlcnic_adapter *adapter)
{
 qlcnic_83xx_idc_update_drv_presence_reg(adapter, 1, 0);
 qlcnic_83xx_idc_update_audit_reg(adapter, 1, 0);

 if (qlcnic_load_fw_file) {
  qlcnic_83xx_idc_restart_hw(adapter, 0);
 } else {
  if (qlcnic_83xx_check_hw_status(adapter)) {
   qlcnic_83xx_idc_enter_failed_state(adapter, 0);
   return -EIO;
  } else {
   qlcnic_83xx_idc_enter_ready_state(adapter, 0);
  }
 }
 return 0;
}
