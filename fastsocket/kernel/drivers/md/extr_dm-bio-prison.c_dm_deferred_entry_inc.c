
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_deferred_set {int current_entry; int lock; struct dm_deferred_entry* entries; } ;
struct dm_deferred_entry {int count; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct dm_deferred_entry *dm_deferred_entry_inc(struct dm_deferred_set *ds)
{
 unsigned long flags;
 struct dm_deferred_entry *entry;

 spin_lock_irqsave(&ds->lock, flags);
 entry = ds->entries + ds->current_entry;
 entry->count++;
 spin_unlock_irqrestore(&ds->lock, flags);

 return entry;
}
