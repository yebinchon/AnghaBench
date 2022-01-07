
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_lkey_table {int lock; int ** table; } ;


 int ib_ipath_lkey_table_size ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipath_free_lkey(struct ipath_lkey_table *rkt, u32 lkey)
{
 unsigned long flags;
 u32 r;

 if (lkey == 0)
  return;
 r = lkey >> (32 - ib_ipath_lkey_table_size);
 spin_lock_irqsave(&rkt->lock, flags);
 rkt->table[r] = ((void*)0);
 spin_unlock_irqrestore(&rkt->lock, flags);
}
