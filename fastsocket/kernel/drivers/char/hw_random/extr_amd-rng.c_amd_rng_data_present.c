
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hwrng {int priv; } ;


 int inl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int amd_rng_data_present(struct hwrng *rng, int wait)
{
 u32 pmbase = (u32)rng->priv;
 int data, i;

 for (i = 0; i < 20; i++) {
  data = !!(inl(pmbase + 0xF4) & 1);
  if (data || !wait)
   break;
  udelay(10);
 }
 return data;
}
