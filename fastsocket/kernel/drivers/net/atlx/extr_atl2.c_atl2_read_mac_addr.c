
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct atl2_hw {int* perm_mac_addr; int* mac_addr; } ;
typedef int s32 ;


 size_t NODE_ADDRESS_SIZE ;
 scalar_t__ get_permanent_address (struct atl2_hw*) ;

__attribute__((used)) static s32 atl2_read_mac_addr(struct atl2_hw *hw)
{
 u16 i;

 if (get_permanent_address(hw)) {


  hw->perm_mac_addr[0] = 0x00;
  hw->perm_mac_addr[1] = 0x13;
  hw->perm_mac_addr[2] = 0x74;
  hw->perm_mac_addr[3] = 0x00;
  hw->perm_mac_addr[4] = 0x5c;
  hw->perm_mac_addr[5] = 0x38;
 }

 for (i = 0; i < NODE_ADDRESS_SIZE; i++)
  hw->mac_addr[i] = hw->perm_mac_addr[i];

 return 0;
}
