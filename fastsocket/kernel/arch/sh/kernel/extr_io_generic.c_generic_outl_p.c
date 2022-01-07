
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ctrl_delay () ;
 int generic_outl (int ,unsigned long) ;

void generic_outl_p(u32 b, unsigned long port)
{
 generic_outl(b, port);
 ctrl_delay();
}
