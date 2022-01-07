
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {int lock; int * neigh; int refcnt; } ;
struct l2t_data {int nfree; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int neigh_release (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void t3_l2e_free(struct l2t_data *d, struct l2t_entry *e)
{
 spin_lock_bh(&e->lock);
 if (atomic_read(&e->refcnt) == 0) {
  if (e->neigh) {
   neigh_release(e->neigh);
   e->neigh = ((void*)0);
  }
 }
 spin_unlock_bh(&e->lock);
 atomic_inc(&d->nfree);
}
