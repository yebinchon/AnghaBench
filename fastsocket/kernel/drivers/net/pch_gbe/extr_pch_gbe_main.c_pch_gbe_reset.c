
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int hw; } ;


 int PCH_GBE_MAR_ENTRIES ;
 scalar_t__ pch_gbe_hal_init_hw (int *) ;
 int pch_gbe_mac_init_rx_addrs (int *,int ) ;
 int pch_gbe_mac_reset_hw (int *) ;
 int pr_err (char*) ;

void pch_gbe_reset(struct pch_gbe_adapter *adapter)
{
 pch_gbe_mac_reset_hw(&adapter->hw);

 pch_gbe_mac_init_rx_addrs(&adapter->hw, PCH_GBE_MAR_ENTRIES);
 if (pch_gbe_hal_init_hw(&adapter->hw))
  pr_err("Hardware Error\n");
}
