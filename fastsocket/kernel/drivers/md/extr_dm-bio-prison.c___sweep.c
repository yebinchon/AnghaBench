
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct dm_deferred_set {size_t sweeper; size_t current_entry; TYPE_1__* entries; } ;
struct TYPE_2__ {int work_items; int count; } ;


 size_t ds_next (size_t) ;
 int list_splice_init (int *,struct list_head*) ;

__attribute__((used)) static void __sweep(struct dm_deferred_set *ds, struct list_head *head)
{
 while ((ds->sweeper != ds->current_entry) &&
        !ds->entries[ds->sweeper].count) {
  list_splice_init(&ds->entries[ds->sweeper].work_items, head);
  ds->sweeper = ds_next(ds->sweeper);
 }

 if ((ds->sweeper == ds->current_entry) && !ds->entries[ds->sweeper].count)
  list_splice_init(&ds->entries[ds->sweeper].work_items, head);
}
