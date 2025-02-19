
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int state_entry; } ;
struct qlcnic_hardware_context {TYPE_2__ idc; } ;
struct qlcnic_adapter {TYPE_1__* nic_ops; int state; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_3__ {int init_driver; } ;


 int EIO ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 scalar_t__ QLC_83XX_DEFAULT_OPMODE ;
 int QLC_83XX_DRV_OP_MODE ;
 int __QLCNIC_SRIOV_CAPABLE ;
 int qlcnic_83xx_idc_ready_state_entry ;
 int qlcnic_83xx_init_default_driver ;
 int qlcnic_get_func_no (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_83xx_config_default_opmode(struct qlcnic_adapter *adapter)
{
 u32 op_mode;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 qlcnic_get_func_no(adapter);
 op_mode = QLCRDX(ahw, QLC_83XX_DRV_OP_MODE);

 if (test_bit(__QLCNIC_SRIOV_CAPABLE, &adapter->state))
  op_mode = QLC_83XX_DEFAULT_OPMODE;

 if (op_mode == QLC_83XX_DEFAULT_OPMODE) {
  adapter->nic_ops->init_driver = qlcnic_83xx_init_default_driver;
  ahw->idc.state_entry = qlcnic_83xx_idc_ready_state_entry;
 } else {
  return -EIO;
 }

 return 0;
}
