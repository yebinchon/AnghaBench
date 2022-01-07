
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int (* data_present ) (struct hwrng*,int) ;} ;


 int stub1 (struct hwrng*,int) ;

__attribute__((used)) static inline int hwrng_data_present(struct hwrng *rng, int wait)
{
 if (!rng->data_present)
  return 1;
 return rng->data_present(rng, wait);
}
