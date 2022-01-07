
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALEB_BURST ;
 int CALEB_INTREN0 ;
 int CALEB_INTREN1 ;
 int CALEB_PHY0RX ;
 int CALEB_PHY0TX ;
 int CALEB_PHY1RX ;
 int CALEB_PHY1TX ;
 int CALEB_RESET ;
 int caleb_reg_write (int ,int) ;
 int udelay (int) ;

void caleb_reset(void)
{



 caleb_reg_write(CALEB_RESET, 0x02);
 udelay(1);






 caleb_reg_write(CALEB_INTREN0, 0xff);
 caleb_reg_write(CALEB_INTREN1, 0x07);




 caleb_reg_write(CALEB_PHY0RX, 0x11);
 caleb_reg_write(CALEB_PHY1RX, 0x11);
 caleb_reg_write(CALEB_PHY0TX, 0x11);
 caleb_reg_write(CALEB_PHY1TX, 0x11);




 caleb_reg_write(CALEB_BURST, 0);


}
