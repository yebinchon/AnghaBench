
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* cfg_on_link_up ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {scalar_t__ media_type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 scalar_t__ e1000_media_type_copper ;
 int e1000e_get_speed_and_duplex_copper (struct e1000_hw*,int *,int *) ;
 int e1000e_get_speed_and_duplex_fiber_serdes (struct e1000_hw*,int *,int *) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_get_link_up_info_80003es2lan(struct e1000_hw *hw, u16 *speed,
           u16 *duplex)
{
 s32 ret_val;

 if (hw->phy.media_type == e1000_media_type_copper) {
  ret_val = e1000e_get_speed_and_duplex_copper(hw,
            speed,
            duplex);
  hw->phy.ops.cfg_on_link_up(hw);
 } else {
  ret_val = e1000e_get_speed_and_duplex_fiber_serdes(hw,
          speed,
          duplex);
 }

 return ret_val;
}
