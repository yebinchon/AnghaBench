
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_table {int list; } ;


 int kfree (struct unwind_table*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unwind_lock ;

void unwind_table_remove(struct unwind_table *table)
{
 unsigned long flags;

 spin_lock_irqsave(&unwind_lock, flags);
 list_del(&table->list);
 spin_unlock_irqrestore(&unwind_lock, flags);

 kfree(table);
}
