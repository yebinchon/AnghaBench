
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CALEB_PORTEN ;
 int caleb_reg_read (int ) ;
 int caleb_reg_write (int ,int) ;

void caleb_disable_tx(int port)
{
 u8 temp;

 temp = caleb_reg_read(CALEB_PORTEN);
 temp &= ~(1 << (port + 4));
 caleb_reg_write(CALEB_PORTEN, temp);
}
