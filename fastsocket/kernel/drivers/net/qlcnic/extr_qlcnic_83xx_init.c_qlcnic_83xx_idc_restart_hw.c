
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int qlcnic_83xx_idc_clear_registers (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_idc_enter_failed_state (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_idc_enter_ready_state (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_restart_hw (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_restart_hw(struct qlcnic_adapter *adapter, int lock)
{
 int ret = 0;

 ret = qlcnic_83xx_restart_hw(adapter);

 if (ret) {
  qlcnic_83xx_idc_enter_failed_state(adapter, lock);
 } else {
  qlcnic_83xx_idc_clear_registers(adapter, lock);
  ret = qlcnic_83xx_idc_enter_ready_state(adapter, lock);
 }

 return ret;
}
