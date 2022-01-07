
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ctrl_delay () ;
 int generic_outw (int ,unsigned long) ;

void generic_outw_p(u16 b, unsigned long port)
{
 generic_outw(b, port);
 ctrl_delay();
}
