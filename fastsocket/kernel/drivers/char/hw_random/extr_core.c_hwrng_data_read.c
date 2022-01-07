
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int (* data_read ) (struct hwrng*,int *) ;} ;


 int stub1 (struct hwrng*,int *) ;

__attribute__((used)) static inline int hwrng_data_read(struct hwrng *rng, u32 *data)
{
 return rng->data_read(rng, data);
}
