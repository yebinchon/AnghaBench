
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int do_div (unsigned int,int) ;

__attribute__((used)) static unsigned int calc_mck_cycles(unsigned int ns, unsigned int mck_hz)
{
 u64 tmp = ns;

 tmp *= mck_hz;
 tmp += 1000*1000*1000 - 1;
 do_div(tmp, 1000*1000*1000);
 return (unsigned int) tmp;
}
