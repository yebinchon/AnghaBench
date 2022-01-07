
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
struct TYPE_2__ {scalar_t__ (* init_driver ) (struct qlcnic_adapter*) ;} ;


 int EIO ;
 scalar_t__ qlcnic_83xx_configure_opmode (struct qlcnic_adapter*) ;
 int qlcnic_83xx_enable_mbx_intrpt (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_attach_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_enter_failed_state (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_register_nic_idc_func (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_pf_reinit (struct qlcnic_adapter*) ;
 scalar_t__ stub1 (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_reattach_driver(struct qlcnic_adapter *adapter)
{
 int err;


 qlcnic_83xx_register_nic_idc_func(adapter, 1);

 err = qlcnic_sriov_pf_reinit(adapter);
 if (err)
  return err;

 qlcnic_83xx_enable_mbx_intrpt(adapter);

 if (qlcnic_83xx_configure_opmode(adapter)) {
  qlcnic_83xx_idc_enter_failed_state(adapter, 1);
  return -EIO;
 }

 if (adapter->nic_ops->init_driver(adapter)) {
  qlcnic_83xx_idc_enter_failed_state(adapter, 1);
  return -EIO;
 }

 qlcnic_83xx_idc_attach_driver(adapter);

 return 0;
}
