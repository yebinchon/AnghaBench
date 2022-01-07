
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int HV_KMRN_MDIO_SLOW ;
 int HV_KMRN_MODE_CTRL ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_set_mdio_slow_mode_hv(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 data;

 ret_val = e1e_rphy(hw, HV_KMRN_MODE_CTRL, &data);
 if (ret_val)
  return ret_val;

 data |= HV_KMRN_MDIO_SLOW;

 ret_val = e1e_wphy(hw, HV_KMRN_MODE_CTRL, data);

 return ret_val;
}
