
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct hash_cell {struct dm_table* new_map; struct mapped_device* md; } ;
struct dm_table {int dummy; } ;


 int DMWARN (char*) ;
 int _hash_lock ;
 struct hash_cell* dm_get_mdptr (struct mapped_device*) ;
 int dm_table_get (struct dm_table*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct dm_table *dm_get_inactive_table(struct mapped_device *md)
{
 struct hash_cell *hc;
 struct dm_table *table = ((void*)0);

 down_read(&_hash_lock);
 hc = dm_get_mdptr(md);
 if (!hc || hc->md != md) {
  DMWARN("device has been removed from the dev hash table.");
  goto out;
 }

 table = hc->new_map;
 if (table)
  dm_table_get(table);

out:
 up_read(&_hash_lock);

 return table;
}
