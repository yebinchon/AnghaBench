
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int pm3386_port_reg_read (int,int,int) ;

int pm3386_is_link_up(int port)
{
 u16 temp;

 temp = pm3386_port_reg_read(port, 0x31a, 0x100);
 temp = pm3386_port_reg_read(port, 0x31a, 0x100);

 return !!(temp & 0x0002);
}
