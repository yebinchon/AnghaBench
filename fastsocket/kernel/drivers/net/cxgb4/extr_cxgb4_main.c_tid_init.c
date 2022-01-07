
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aopen_entry {union aopen_entry* next; } ;
struct tid_info {unsigned int natids; int ntids; int nstids; unsigned long* stid_bmap; union aopen_entry* atid_tab; union aopen_entry* afree; int tids_in_use; scalar_t__ atids_in_use; scalar_t__ stids_in_use; int atid_lock; int stid_lock; struct serv_entry* stid_tab; int * tid_tab; } ;
struct serv_entry {int dummy; } ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int atomic_set (int *,int ) ;
 int bitmap_zero (unsigned long*,size_t) ;
 int spin_lock_init (int *) ;
 int * t4_alloc_mem (size_t) ;

__attribute__((used)) static int tid_init(struct tid_info *t)
{
 size_t size;
 unsigned int natids = t->natids;

 size = t->ntids * sizeof(*t->tid_tab) + natids * sizeof(*t->atid_tab) +
        t->nstids * sizeof(*t->stid_tab) +
        BITS_TO_LONGS(t->nstids) * sizeof(long);
 t->tid_tab = t4_alloc_mem(size);
 if (!t->tid_tab)
  return -ENOMEM;

 t->atid_tab = (union aopen_entry *)&t->tid_tab[t->ntids];
 t->stid_tab = (struct serv_entry *)&t->atid_tab[natids];
 t->stid_bmap = (unsigned long *)&t->stid_tab[t->nstids];
 spin_lock_init(&t->stid_lock);
 spin_lock_init(&t->atid_lock);

 t->stids_in_use = 0;
 t->afree = ((void*)0);
 t->atids_in_use = 0;
 atomic_set(&t->tids_in_use, 0);


 if (natids) {
  while (--natids)
   t->atid_tab[natids - 1].next = &t->atid_tab[natids];
  t->afree = t->atid_tab;
 }
 bitmap_zero(t->stid_bmap, t->nstids);
 return 0;
}
