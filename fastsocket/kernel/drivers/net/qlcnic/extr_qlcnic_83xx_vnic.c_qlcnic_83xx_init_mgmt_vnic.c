
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {int flags; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int msix_supported; int fw_hal_version; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int QLCNIC_ADAPTER_INITIALIZED ;
 int dev_info (int *,char*,int ) ;
 int qlcnic_83xx_config_vnic_buff_descriptors (struct qlcnic_adapter*) ;
 int qlcnic_83xx_enable_vnic_mode (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_get_minidump_template (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_get_port_info (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_set_vnic_opmode (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_init_pci_info (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_reset_npar_config (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_set_default_offload_settings (struct qlcnic_adapter*) ;
 int qlcnic_use_msi_x ;

__attribute__((used)) static int qlcnic_83xx_init_mgmt_vnic(struct qlcnic_adapter *adapter)
{
 int err = -EIO;

 qlcnic_83xx_get_minidump_template(adapter);
 if (!(adapter->flags & QLCNIC_ADAPTER_INITIALIZED)) {
  if (qlcnic_init_pci_info(adapter))
   return err;

  if (qlcnic_83xx_set_vnic_opmode(adapter))
   return err;

  if (qlcnic_set_default_offload_settings(adapter))
   return err;
 } else {
  if (qlcnic_reset_npar_config(adapter))
   return err;
 }

 if (qlcnic_83xx_get_port_info(adapter))
  return err;

 qlcnic_83xx_config_vnic_buff_descriptors(adapter);
 adapter->ahw->msix_supported = !!qlcnic_use_msi_x;
 adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;
 qlcnic_83xx_enable_vnic_mode(adapter, 1);

 dev_info(&adapter->pdev->dev, "HAL Version: %d, Management function\n",
   adapter->ahw->fw_hal_version);

 return 0;
}
