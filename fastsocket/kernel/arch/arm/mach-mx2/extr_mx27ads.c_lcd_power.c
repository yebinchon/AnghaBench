
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBC_BCTRL1_CLEAR_REG ;
 int PBC_BCTRL1_LCDON ;
 int PBC_BCTRL1_SET_REG ;
 int __raw_writew (int ,int ) ;

void lcd_power(int on)
{
 if (on)
  __raw_writew(PBC_BCTRL1_LCDON, PBC_BCTRL1_SET_REG);
 else
  __raw_writew(PBC_BCTRL1_LCDON, PBC_BCTRL1_CLEAR_REG);
}
