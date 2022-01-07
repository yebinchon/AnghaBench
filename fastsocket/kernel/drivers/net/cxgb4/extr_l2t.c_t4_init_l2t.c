
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2t_data {TYPE_1__* l2tab; int lock; int nfree; TYPE_1__* rover; } ;
struct TYPE_2__ {int idx; int refcnt; int lock; int state; } ;


 int L2T_SIZE ;
 int L2T_STATE_UNUSED ;
 int atomic_set (int *,int) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 struct l2t_data* t4_alloc_mem (int) ;

struct l2t_data *t4_init_l2t(void)
{
 int i;
 struct l2t_data *d;

 d = t4_alloc_mem(sizeof(*d));
 if (!d)
  return ((void*)0);

 d->rover = d->l2tab;
 atomic_set(&d->nfree, L2T_SIZE);
 rwlock_init(&d->lock);

 for (i = 0; i < L2T_SIZE; ++i) {
  d->l2tab[i].idx = i;
  d->l2tab[i].state = L2T_STATE_UNUSED;
  spin_lock_init(&d->l2tab[i].lock);
  atomic_set(&d->l2tab[i].refcnt, 0);
 }
 return d;
}
