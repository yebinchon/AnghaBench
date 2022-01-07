
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ipath_mregion {size_t lkey; } ;
struct ipath_lkey_table {size_t next; int max; int gen; int lock; struct ipath_mregion** table; } ;


 int ib_ipath_lkey_table_size ;
 int ipath_dbg (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipath_alloc_lkey(struct ipath_lkey_table *rkt, struct ipath_mregion *mr)
{
 unsigned long flags;
 u32 r;
 u32 n;
 int ret;

 spin_lock_irqsave(&rkt->lock, flags);


 r = n = rkt->next;
 for (;;) {
  if (rkt->table[r] == ((void*)0))
   break;
  r = (r + 1) & (rkt->max - 1);
  if (r == n) {
   spin_unlock_irqrestore(&rkt->lock, flags);
   ipath_dbg("LKEY table full\n");
   ret = 0;
   goto bail;
  }
 }
 rkt->next = (r + 1) & (rkt->max - 1);




 rkt->gen++;
 mr->lkey = (r << (32 - ib_ipath_lkey_table_size)) |
  ((((1 << (24 - ib_ipath_lkey_table_size)) - 1) & rkt->gen)
   << 8);
 if (mr->lkey == 0) {
  mr->lkey |= 1 << 8;
  rkt->gen++;
 }
 rkt->table[r] = mr;
 spin_unlock_irqrestore(&rkt->lock, flags);

 ret = 1;

bail:
 return ret;
}
