
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hwrng {int priv; } ;


 scalar_t__ inl (scalar_t__) ;

__attribute__((used)) static int amd_rng_data_read(struct hwrng *rng, u32 *data)
{
 u32 pmbase = (u32)rng->priv;

 *data = inl(pmbase + 0xF0);

 return 4;
}
