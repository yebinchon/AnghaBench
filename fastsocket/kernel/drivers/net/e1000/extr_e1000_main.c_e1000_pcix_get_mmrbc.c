
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {struct e1000_adapter* back; } ;
struct e1000_adapter {int pdev; } ;


 int pcix_get_mmrbc (int ) ;

int e1000_pcix_get_mmrbc(struct e1000_hw *hw)
{
 struct e1000_adapter *adapter = hw->back;
 return pcix_get_mmrbc(adapter->pdev);
}
