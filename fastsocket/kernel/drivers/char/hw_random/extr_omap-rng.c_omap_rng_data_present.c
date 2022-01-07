
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;


 int RNG_STAT_REG ;
 scalar_t__ omap_rng_read_reg (int ) ;
 int udelay (int) ;

__attribute__((used)) static int omap_rng_data_present(struct hwrng *rng, int wait)
{
 int data, i;

 for (i = 0; i < 20; i++) {
  data = omap_rng_read_reg(RNG_STAT_REG) ? 0 : 1;
  if (data || !wait)
   break;





  udelay(10);
 }
 return data;
}
