
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 scalar_t__ qlcnic_83xx_get_reset_instruction_template (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_check_driver_presence_reg (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_idc_check_major_version (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_idc_first_to_load_function_handler (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_update_audit_reg (struct qlcnic_adapter*,int ,int) ;
 int qlcnic_83xx_setup_idc_parameters (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_init(struct qlcnic_adapter *adapter)
{
 int ret = -EIO;

 qlcnic_83xx_setup_idc_parameters(adapter);

 if (qlcnic_83xx_get_reset_instruction_template(adapter))
  return ret;

 if (!qlcnic_83xx_idc_check_driver_presence_reg(adapter)) {
  if (qlcnic_83xx_idc_first_to_load_function_handler(adapter))
   return -EIO;
 } else {
  if (qlcnic_83xx_idc_check_major_version(adapter))
   return -EIO;
 }

 qlcnic_83xx_idc_update_audit_reg(adapter, 0, 1);

 return 0;
}
