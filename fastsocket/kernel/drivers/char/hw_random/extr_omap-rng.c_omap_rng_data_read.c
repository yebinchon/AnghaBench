
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int dummy; } ;


 int RNG_OUT_REG ;
 int omap_rng_read_reg (int ) ;

__attribute__((used)) static int omap_rng_data_read(struct hwrng *rng, u32 *data)
{
 *data = omap_rng_read_reg(RNG_OUT_REG);

 return 4;
}
