
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*) ;

void mvme16x_reset(void)
{
 printk ("\r\n\nCalled mvme16x_reset\r\n"
   "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r");


 *(volatile char *)0xfff40107 = 0x80;
}
