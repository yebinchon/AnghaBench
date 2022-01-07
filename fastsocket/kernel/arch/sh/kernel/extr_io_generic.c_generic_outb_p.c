
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ctrl_delay () ;
 int generic_outb (int ,unsigned long) ;

void generic_outb_p(u8 b, unsigned long port)
{
 generic_outb(b, port);
 ctrl_delay();
}
