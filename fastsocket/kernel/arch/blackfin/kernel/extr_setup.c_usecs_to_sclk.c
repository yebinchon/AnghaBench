
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int USEC_PER_SEC ;
 int do_div (unsigned long,int ) ;
 unsigned long get_sclk () ;

unsigned long usecs_to_sclk(unsigned long usecs)
{
 u64 tmp = get_sclk() * (u64)usecs;
 do_div(tmp, USEC_PER_SEC);
 return tmp;
}
