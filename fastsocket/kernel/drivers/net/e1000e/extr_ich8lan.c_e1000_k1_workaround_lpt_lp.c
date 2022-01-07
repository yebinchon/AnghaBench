
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int E1000_FEXTNVM6_REQ_PLL_CLK ;
 int E1000_KMRNCTRLSTA_K1_CONFIG ;
 int E1000_KMRNCTRLSTA_K1_ENABLE ;
 int E1000_STATUS_SPEED_1000 ;
 int FEXTNVM6 ;
 int STATUS ;
 scalar_t__ e1000e_read_kmrn_reg_locked (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000e_write_kmrn_reg_locked (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_k1_workaround_lpt_lp(struct e1000_hw *hw, bool link)
{
 u32 fextnvm6 = er32(FEXTNVM6);
 s32 ret_val = 0;

 if (link && (er32(STATUS) & E1000_STATUS_SPEED_1000)) {
  u16 kmrn_reg;

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;

  ret_val =
      e1000e_read_kmrn_reg_locked(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
      &kmrn_reg);
  if (ret_val)
   goto release;

  ret_val =
      e1000e_write_kmrn_reg_locked(hw,
       E1000_KMRNCTRLSTA_K1_CONFIG,
       kmrn_reg &
       ~E1000_KMRNCTRLSTA_K1_ENABLE);
  if (ret_val)
   goto release;

  usleep_range(10, 20);

  ew32(FEXTNVM6, fextnvm6 | E1000_FEXTNVM6_REQ_PLL_CLK);

  ret_val =
      e1000e_write_kmrn_reg_locked(hw,
       E1000_KMRNCTRLSTA_K1_CONFIG,
       kmrn_reg);
release:
  hw->phy.ops.release(hw);
 } else {

  ew32(FEXTNVM6, fextnvm6 & ~E1000_FEXTNVM6_REQ_PLL_CLK);
 }

 return ret_val;
}
