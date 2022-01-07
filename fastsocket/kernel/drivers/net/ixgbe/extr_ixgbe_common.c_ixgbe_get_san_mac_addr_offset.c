
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int IXGBE_SAN_MAC_ADDR_PTR ;
 int stub1 (struct ixgbe_hw*,int ,int *) ;

__attribute__((used)) static s32 ixgbe_get_san_mac_addr_offset(struct ixgbe_hw *hw,
                                        u16 *san_mac_offset)
{




 hw->eeprom.ops.read(hw, IXGBE_SAN_MAC_ADDR_PTR, san_mac_offset);

 return 0;
}
