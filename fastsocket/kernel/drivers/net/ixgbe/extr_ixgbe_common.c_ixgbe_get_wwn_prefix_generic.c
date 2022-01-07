
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR ;
 int IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN ;
 int IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET ;
 int IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET ;
 int IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET ;
 int stub1 (struct ixgbe_hw*,int,int*) ;
 int stub2 (struct ixgbe_hw*,int,int*) ;
 int stub3 (struct ixgbe_hw*,int,int*) ;
 int stub4 (struct ixgbe_hw*,int,int*) ;

s32 ixgbe_get_wwn_prefix_generic(struct ixgbe_hw *hw, u16 *wwnn_prefix,
                                        u16 *wwpn_prefix)
{
 u16 offset, caps;
 u16 alt_san_mac_blk_offset;


 *wwnn_prefix = 0xFFFF;
 *wwpn_prefix = 0xFFFF;


 hw->eeprom.ops.read(hw, IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR,
                     &alt_san_mac_blk_offset);

 if ((alt_san_mac_blk_offset == 0) ||
     (alt_san_mac_blk_offset == 0xFFFF))
  goto wwn_prefix_out;


 offset = alt_san_mac_blk_offset + IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET;
 hw->eeprom.ops.read(hw, offset, &caps);
 if (!(caps & IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN))
  goto wwn_prefix_out;


 offset = alt_san_mac_blk_offset + IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET;
 hw->eeprom.ops.read(hw, offset, wwnn_prefix);

 offset = alt_san_mac_blk_offset + IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET;
 hw->eeprom.ops.read(hw, offset, wwpn_prefix);

wwn_prefix_out:
 return 0;
}
