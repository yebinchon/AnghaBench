
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_table_entry {int dummy; } ;
struct unwind_table {int list; } ;


 int GFP_USER ;
 struct unwind_table* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unwind_lock ;
 int unwind_table_init (struct unwind_table*,char const*,unsigned long,unsigned long,void*,void*) ;
 int unwind_table_sort (struct unwind_table_entry*,struct unwind_table_entry*) ;
 int unwind_tables ;

struct unwind_table *
unwind_table_add(const char *name, unsigned long base_addr,
   unsigned long gp,
                 void *start, void *end)
{
 struct unwind_table *table;
 unsigned long flags;
 struct unwind_table_entry *s = (struct unwind_table_entry *)start;
 struct unwind_table_entry *e = (struct unwind_table_entry *)end;

 unwind_table_sort(s, e);

 table = kmalloc(sizeof(struct unwind_table), GFP_USER);
 if (table == ((void*)0))
  return ((void*)0);
 unwind_table_init(table, name, base_addr, gp, start, end);
 spin_lock_irqsave(&unwind_lock, flags);
 list_add_tail(&table->list, &unwind_tables);
 spin_unlock_irqrestore(&unwind_lock, flags);

 return table;
}
