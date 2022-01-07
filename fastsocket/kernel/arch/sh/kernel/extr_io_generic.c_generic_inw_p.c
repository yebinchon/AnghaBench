
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 int ctrl_delay () ;
 unsigned long generic_inw (unsigned long) ;

u16 generic_inw_p(unsigned long port)
{
 unsigned long v = generic_inw(port);

 ctrl_delay();
 return v;
}
