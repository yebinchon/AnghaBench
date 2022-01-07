
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int (* init ) (struct hwrng*) ;} ;


 int stub1 (struct hwrng*) ;

__attribute__((used)) static inline int hwrng_init(struct hwrng *rng)
{
 if (!rng->init)
  return 0;
 return rng->init(rng);
}
