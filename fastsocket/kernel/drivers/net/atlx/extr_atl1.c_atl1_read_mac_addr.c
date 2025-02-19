
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct atl1_hw {int * perm_mac_addr; int * mac_addr; } ;
typedef int s32 ;


 size_t ETH_ALEN ;
 scalar_t__ atl1_get_permanent_address (struct atl1_hw*) ;
 int random_ether_addr (int *) ;

__attribute__((used)) static s32 atl1_read_mac_addr(struct atl1_hw *hw)
{
 u16 i;

 if (atl1_get_permanent_address(hw))
  random_ether_addr(hw->perm_mac_addr);

 for (i = 0; i < ETH_ALEN; i++)
  hw->mac_addr[i] = hw->perm_mac_addr[i];
 return 0;
}
