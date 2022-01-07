
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int register_lock; } ;


 int EINVAL ;
 int init_priv1 (struct spu_state*) ;
 int init_priv2 (struct spu_state*) ;
 int init_prob (struct spu_state*) ;
 int memset (struct spu_state*,int ,int) ;
 int spin_lock_init (int *) ;
 int spu_alloc_lscsa (struct spu_state*) ;

int spu_init_csa(struct spu_state *csa)
{
 int rc;

 if (!csa)
  return -EINVAL;
 memset(csa, 0, sizeof(struct spu_state));

 rc = spu_alloc_lscsa(csa);
 if (rc)
  return rc;

 spin_lock_init(&csa->register_lock);

 init_prob(csa);
 init_priv1(csa);
 init_priv2(csa);

 return 0;
}
