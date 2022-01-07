
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP1_IO_BASE ;
 int GP2_IO_BASE ;
 int inb (int ) ;

unsigned int nw_gpio_read(void)
{
 return inb(GP1_IO_BASE) | inb(GP2_IO_BASE) << 8;
}
