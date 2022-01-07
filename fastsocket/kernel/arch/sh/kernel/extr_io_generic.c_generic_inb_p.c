
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 int ctrl_delay () ;
 unsigned long generic_inb (unsigned long) ;

u8 generic_inb_p(unsigned long port)
{
 unsigned long v = generic_inb(port);

 ctrl_delay();
 return v;
}
