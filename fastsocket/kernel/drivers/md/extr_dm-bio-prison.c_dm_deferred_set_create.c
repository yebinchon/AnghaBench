
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_deferred_set {TYPE_1__* entries; scalar_t__ sweeper; scalar_t__ current_entry; int lock; } ;
struct TYPE_2__ {int work_items; scalar_t__ count; struct dm_deferred_set* ds; } ;


 int DEFERRED_SET_SIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct dm_deferred_set* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct dm_deferred_set *dm_deferred_set_create(void)
{
 int i;
 struct dm_deferred_set *ds;

 ds = kmalloc(sizeof(*ds), GFP_KERNEL);
 if (!ds)
  return ((void*)0);

 spin_lock_init(&ds->lock);
 ds->current_entry = 0;
 ds->sweeper = 0;
 for (i = 0; i < DEFERRED_SET_SIZE; i++) {
  ds->entries[i].ds = ds;
  ds->entries[i].count = 0;
  INIT_LIST_HEAD(&ds->entries[i].work_items);
 }

 return ds;
}
