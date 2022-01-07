
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BMSR_LSTATUS ;
 int MII_BMSR ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,scalar_t__*) ;
 int mdelay (scalar_t__) ;
 int udelay (scalar_t__) ;

s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
          u32 usec_interval, bool *success)
{
 s32 ret_val = 0;
 u16 i, phy_status;

 for (i = 0; i < iterations; i++) {




  ret_val = e1e_rphy(hw, MII_BMSR, &phy_status);
  if (ret_val)




   udelay(usec_interval);
  ret_val = e1e_rphy(hw, MII_BMSR, &phy_status);
  if (ret_val)
   break;
  if (phy_status & BMSR_LSTATUS)
   break;
  if (usec_interval >= 1000)
   mdelay(usec_interval / 1000);
  else
   udelay(usec_interval);
 }

 *success = (i < iterations);

 return ret_val;
}
