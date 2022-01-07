
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vnic_state; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int EBUSY ;
 int QLCNIC_DEV_NPAR_NON_OPER ;
 int QLCWRX (struct qlcnic_hardware_context*,int ,int ) ;
 int QLC_83XX_VNIC_STATE ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;

int qlcnic_83xx_disable_vnic_mode(struct qlcnic_adapter *adapter, int lock)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 if (lock) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;
 }

 QLCWRX(adapter->ahw, QLC_83XX_VNIC_STATE, QLCNIC_DEV_NPAR_NON_OPER);
 ahw->idc.vnic_state = QLCNIC_DEV_NPAR_NON_OPER;

 if (lock)
  qlcnic_83xx_unlock_driver(adapter);

 return 0;
}
