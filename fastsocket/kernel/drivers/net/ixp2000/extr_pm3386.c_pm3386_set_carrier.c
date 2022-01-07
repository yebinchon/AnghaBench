
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm3386_port_reg_write (int,int,int,int) ;

void pm3386_set_carrier(int port, int state)
{
 pm3386_port_reg_write(port, 0x703, 0x10, state ? 0x1001 : 0x0000);
}
