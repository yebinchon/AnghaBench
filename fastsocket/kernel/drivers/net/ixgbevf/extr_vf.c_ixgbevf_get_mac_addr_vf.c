
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int perm_addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static s32 ixgbevf_get_mac_addr_vf(struct ixgbe_hw *hw, u8 *mac_addr)
{
 memcpy(mac_addr, hw->mac.perm_addr, ETH_ALEN);

 return 0;
}
