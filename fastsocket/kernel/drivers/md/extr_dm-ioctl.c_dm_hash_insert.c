
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct hash_cell {int uuid_list; int md; int name_list; } ;


 int EBUSY ;
 int ENOMEM ;
 struct hash_cell* __get_name_cell (char const*) ;
 struct hash_cell* __get_uuid_cell (char const*) ;
 int _hash_lock ;
 scalar_t__ _name_buckets ;
 scalar_t__ _uuid_buckets ;
 struct hash_cell* alloc_cell (char const*,char const*,struct mapped_device*) ;
 int dm_get (struct mapped_device*) ;
 int dm_hash_cells_mutex ;
 int dm_put (int ) ;
 int dm_set_mdptr (struct mapped_device*,struct hash_cell*) ;
 int down_write (int *) ;
 int free_cell (struct hash_cell*) ;
 scalar_t__ hash_str (char const*) ;
 int list_add (int *,scalar_t__) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int dm_hash_insert(const char *name, const char *uuid, struct mapped_device *md)
{
 struct hash_cell *cell, *hc;




 cell = alloc_cell(name, uuid, md);
 if (!cell)
  return -ENOMEM;




 down_write(&_hash_lock);
 hc = __get_name_cell(name);
 if (hc) {
  dm_put(hc->md);
  goto bad;
 }

 list_add(&cell->name_list, _name_buckets + hash_str(name));

 if (uuid) {
  hc = __get_uuid_cell(uuid);
  if (hc) {
   list_del(&cell->name_list);
   dm_put(hc->md);
   goto bad;
  }
  list_add(&cell->uuid_list, _uuid_buckets + hash_str(uuid));
 }
 dm_get(md);
 mutex_lock(&dm_hash_cells_mutex);
 dm_set_mdptr(md, cell);
 mutex_unlock(&dm_hash_cells_mutex);
 up_write(&_hash_lock);

 return 0;

 bad:
 up_write(&_hash_lock);
 free_cell(cell);
 return -EBUSY;
}
