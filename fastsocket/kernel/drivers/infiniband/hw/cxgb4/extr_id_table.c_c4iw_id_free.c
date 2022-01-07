
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct c4iw_id_table {int lock; int table; scalar_t__ start; } ;


 int BUG_ON (int) ;
 int clear_bit (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void c4iw_id_free(struct c4iw_id_table *alloc, u32 obj)
{
 unsigned long flags;

 obj -= alloc->start;
 BUG_ON((int)obj < 0);

 spin_lock_irqsave(&alloc->lock, flags);
 clear_bit(obj, alloc->table);
 spin_unlock_irqrestore(&alloc->lock, flags);
}
