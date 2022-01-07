
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int pm3386_port_reg_read (int,int,int) ;
 int pm3386_port_reg_write (int,int,int,int) ;

void pm3386_disable_rx(int port)
{
 u16 temp;

 temp = pm3386_port_reg_read(port, 0x303, 0x100);
 temp &= 0xefff;
 pm3386_port_reg_write(port, 0x303, 0x100, temp);
}
