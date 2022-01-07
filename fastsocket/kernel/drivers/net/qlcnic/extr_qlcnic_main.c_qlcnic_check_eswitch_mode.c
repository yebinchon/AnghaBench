
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {int flags; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int fw_hal_version; scalar_t__ op_mode; int pci_func; } ;
struct TYPE_3__ {int dev; } ;


 int QLCNIC_ADAPTER_INITIALIZED ;
 int QLCNIC_DRV_OP_MODE ;
 int QLCNIC_ESWITCH_ENABLED ;
 scalar_t__ QLCNIC_MGMT_FUNC ;
 scalar_t__ QLCNIC_PRIV_FUNC ;
 scalar_t__ QLC_DEV_DRV_DEFAULT ;
 scalar_t__ QLC_DEV_GET_DRV (scalar_t__,int ) ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_info (int *,char*,int ) ;
 int qlcnic_init_pci_info (struct qlcnic_adapter*) ;
 int qlcnic_initialize_nic (struct qlcnic_adapter*) ;
 int qlcnic_set_function_modes (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_check_eswitch_mode(struct qlcnic_adapter *adapter)
{
 u32 op_mode, priv_level;
 int err = 0;

 err = qlcnic_initialize_nic(adapter);
 if (err)
  return err;

 if (adapter->flags & QLCNIC_ADAPTER_INITIALIZED)
  return 0;

 op_mode = QLC_SHARED_REG_RD32(adapter, QLCNIC_DRV_OP_MODE);
 priv_level = QLC_DEV_GET_DRV(op_mode, adapter->ahw->pci_func);

 if (op_mode == QLC_DEV_DRV_DEFAULT)
  priv_level = QLCNIC_MGMT_FUNC;
 else
  priv_level = QLC_DEV_GET_DRV(op_mode, adapter->ahw->pci_func);

 if (adapter->flags & QLCNIC_ESWITCH_ENABLED) {
  if (priv_level == QLCNIC_MGMT_FUNC) {
   adapter->ahw->op_mode = QLCNIC_MGMT_FUNC;
   err = qlcnic_init_pci_info(adapter);
   if (err)
    return err;

   qlcnic_set_function_modes(adapter);
   dev_info(&adapter->pdev->dev,
    "HAL Version: %d, Management function\n",
     adapter->ahw->fw_hal_version);
  } else if (priv_level == QLCNIC_PRIV_FUNC) {
   adapter->ahw->op_mode = QLCNIC_PRIV_FUNC;
   dev_info(&adapter->pdev->dev,
    "HAL Version: %d, Privileged function\n",
     adapter->ahw->fw_hal_version);
  }
 }

 adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;

 return err;
}
