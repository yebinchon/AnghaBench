
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qlcnic_pm_func_cfg {scalar_t__ pci_func; scalar_t__ dest_npar; } ;
struct qlcnic_adapter {TYPE_1__* npars; } ;
struct TYPE_2__ {scalar_t__ phy_port; } ;


 int QL_STATUS_INVALID_PARAM ;
 int qlcnic_is_valid_nic_func (struct qlcnic_adapter*,scalar_t__) ;

__attribute__((used)) static int validate_pm_config(struct qlcnic_adapter *adapter,
         struct qlcnic_pm_func_cfg *pm_cfg, int count)
{
 u8 src_pci_func, s_esw_id, d_esw_id;
 u8 dest_pci_func;
 int i, src_index, dest_index;

 for (i = 0; i < count; i++) {
  src_pci_func = pm_cfg[i].pci_func;
  dest_pci_func = pm_cfg[i].dest_npar;
  src_index = qlcnic_is_valid_nic_func(adapter, src_pci_func);

  if (src_index < 0)
   return QL_STATUS_INVALID_PARAM;

  dest_index = qlcnic_is_valid_nic_func(adapter, dest_pci_func);
  if (dest_index < 0)
   return QL_STATUS_INVALID_PARAM;

  s_esw_id = adapter->npars[src_index].phy_port;
  d_esw_id = adapter->npars[dest_index].phy_port;

  if (s_esw_id != d_esw_id)
   return QL_STATUS_INVALID_PARAM;
 }

 return 0;
}
