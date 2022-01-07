
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;


 int spu_alloc_lscsa_std (struct spu_state*) ;

int spu_alloc_lscsa(struct spu_state *csa)
{
 return spu_alloc_lscsa_std(csa);
}
