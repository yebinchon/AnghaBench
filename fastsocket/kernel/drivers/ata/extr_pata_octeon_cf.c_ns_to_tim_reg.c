
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int octeon_get_clock_rate () ;

__attribute__((used)) static unsigned int ns_to_tim_reg(unsigned int tim_mult, unsigned int nsecs)
{
 unsigned int val;





 val = DIV_ROUND_UP(nsecs * (octeon_get_clock_rate() / 1000000),
     1000 * tim_mult);

 return val;
}
