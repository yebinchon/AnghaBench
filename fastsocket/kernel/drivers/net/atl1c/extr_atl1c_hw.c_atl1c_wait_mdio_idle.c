
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int dummy; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int MDIO_CTRL_BUSY ;
 int MDIO_CTRL_START ;
 int MDIO_MAX_AC_TO ;
 int REG_MDIO_CTRL ;
 int udelay (int) ;

bool atl1c_wait_mdio_idle(struct atl1c_hw *hw)
{
 u32 val;
 int i;

 for (i = 0; i < MDIO_MAX_AC_TO; i++) {
  AT_READ_REG(hw, REG_MDIO_CTRL, &val);
  if (!(val & (MDIO_CTRL_BUSY | MDIO_CTRL_START)))
   break;
  udelay(10);
 }

 return i != MDIO_MAX_AC_TO;
}
