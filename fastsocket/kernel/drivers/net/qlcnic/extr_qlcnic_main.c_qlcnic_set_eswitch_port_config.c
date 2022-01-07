
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_esw_func_cfg {int pci_func; } ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int pci_func; } ;


 int EIO ;
 int QLCNIC_ESWITCH_ENABLED ;
 scalar_t__ qlcnic_get_eswitch_port_config (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ;
 int qlcnic_set_eswitch_port_features (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ;
 int qlcnic_set_vlan_config (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ;

int qlcnic_set_eswitch_port_config(struct qlcnic_adapter *adapter)
{
 struct qlcnic_esw_func_cfg esw_cfg;

 if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED))
  return 0;

 esw_cfg.pci_func = adapter->ahw->pci_func;
 if (qlcnic_get_eswitch_port_config(adapter, &esw_cfg))
   return -EIO;
 qlcnic_set_vlan_config(adapter, &esw_cfg);
 qlcnic_set_eswitch_port_features(adapter, &esw_cfg);

 return 0;
}
