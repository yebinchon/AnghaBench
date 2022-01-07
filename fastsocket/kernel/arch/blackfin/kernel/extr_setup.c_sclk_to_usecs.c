
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long USEC_PER_SEC ;
 int do_div (unsigned long,int ) ;
 int get_sclk () ;

unsigned long sclk_to_usecs(unsigned long sclk)
{
 u64 tmp = USEC_PER_SEC * (u64)sclk;
 do_div(tmp, get_sclk());
 return tmp;
}
