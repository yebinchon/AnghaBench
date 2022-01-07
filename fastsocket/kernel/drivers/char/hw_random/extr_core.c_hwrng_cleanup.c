
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int (* cleanup ) (struct hwrng*) ;} ;


 int stub1 (struct hwrng*) ;

__attribute__((used)) static inline void hwrng_cleanup(struct hwrng *rng)
{
 if (rng && rng->cleanup)
  rng->cleanup(rng);
}
