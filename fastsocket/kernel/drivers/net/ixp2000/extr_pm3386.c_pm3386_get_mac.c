
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int pm3386_port_reg_read (int,int,int) ;

void pm3386_get_mac(int port, u8 *mac)
{
 u16 temp;

 temp = pm3386_port_reg_read(port, 0x308, 0x100);
 mac[0] = temp & 0xff;
 mac[1] = (temp >> 8) & 0xff;

 temp = pm3386_port_reg_read(port, 0x309, 0x100);
 mac[2] = temp & 0xff;
 mac[3] = (temp >> 8) & 0xff;

 temp = pm3386_port_reg_read(port, 0x30a, 0x100);
 mac[4] = temp & 0xff;
 mac[5] = (temp >> 8) & 0xff;
}
