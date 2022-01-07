
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int hw; } ;


 int e1e_wphy (int *,int,int) ;

__attribute__((used)) static void e1000_phy_disable_receiver(struct e1000_adapter *adapter)
{

 e1e_wphy(&adapter->hw, 29, 0x001F);
 e1e_wphy(&adapter->hw, 30, 0x8FFC);
 e1e_wphy(&adapter->hw, 29, 0x001A);
 e1e_wphy(&adapter->hw, 30, 0x8FF0);
}
