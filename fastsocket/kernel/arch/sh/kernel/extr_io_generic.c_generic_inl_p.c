
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int ctrl_delay () ;
 unsigned long generic_inl (unsigned long) ;

u32 generic_inl_p(unsigned long port)
{
 unsigned long v = generic_inl(port);

 ctrl_delay();
 return v;
}
