
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int roundup_pow_of_two (unsigned int) ;

unsigned r600_mip_minify(unsigned size, unsigned level)
{
 unsigned val;

 val = max(1U, size >> level);
 if (level > 0)
  val = roundup_pow_of_two(val);
 return val;
}
