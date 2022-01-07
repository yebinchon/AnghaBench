
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int name; } ;
struct mapped_device {int dummy; } ;
struct hash_cell {struct dm_table* new_map; struct mapped_device* md; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; int target_count; } ;


 int DMWARN (char*,...) ;
 int DM_INACTIVE_PRESENT_FLAG ;
 scalar_t__ DM_TYPE_NONE ;
 int EINVAL ;
 int ENXIO ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 int _hash_lock ;
 struct target_type* dm_get_immutable_target_type (struct mapped_device*) ;
 scalar_t__ dm_get_md_type (struct mapped_device*) ;
 struct hash_cell* dm_get_mdptr (struct mapped_device*) ;
 int dm_lock_md_type (struct mapped_device*) ;
 int dm_put (struct mapped_device*) ;
 int dm_set_md_type (struct mapped_device*,scalar_t__) ;
 int dm_setup_md_queue (struct mapped_device*) ;
 int dm_table_create (struct dm_table**,int ,int ,struct mapped_device*) ;
 int dm_table_destroy (struct dm_table*) ;
 struct target_type* dm_table_get_immutable_target_type (struct dm_table*) ;
 scalar_t__ dm_table_get_type (struct dm_table*) ;
 int dm_unlock_md_type (struct mapped_device*) ;
 int down_write (int *) ;
 struct mapped_device* find_device (struct dm_ioctl*) ;
 int get_mode (struct dm_ioctl*) ;
 int populate_table (struct dm_table*,struct dm_ioctl*,size_t) ;
 int up_write (int *) ;

__attribute__((used)) static int table_load(struct dm_ioctl *param, size_t param_size)
{
 int r;
 struct hash_cell *hc;
 struct dm_table *t;
 struct mapped_device *md;
 struct target_type *immutable_target_type;

 md = find_device(param);
 if (!md)
  return -ENXIO;

 r = dm_table_create(&t, get_mode(param), param->target_count, md);
 if (r)
  goto out;

 r = populate_table(t, param, param_size);
 if (r) {
  dm_table_destroy(t);
  goto out;
 }

 immutable_target_type = dm_get_immutable_target_type(md);
 if (immutable_target_type &&
     (immutable_target_type != dm_table_get_immutable_target_type(t))) {
  DMWARN("can't replace immutable target type %s",
         immutable_target_type->name);
  dm_table_destroy(t);
  r = -EINVAL;
  goto out;
 }


 dm_lock_md_type(md);
 if (dm_get_md_type(md) == DM_TYPE_NONE)

  dm_set_md_type(md, dm_table_get_type(t));
 else if (dm_get_md_type(md) != dm_table_get_type(t)) {
  DMWARN("can't change device type after initial table load.");
  dm_table_destroy(t);
  dm_unlock_md_type(md);
  r = -EINVAL;
  goto out;
 }


 r = dm_setup_md_queue(md);
 if (r) {
  DMWARN("unable to set up device queue for new table.");
  dm_table_destroy(t);
  dm_unlock_md_type(md);
  goto out;
 }
 dm_unlock_md_type(md);


 down_write(&_hash_lock);
 hc = dm_get_mdptr(md);
 if (!hc || hc->md != md) {
  DMWARN("device has been removed from the dev hash table.");
  dm_table_destroy(t);
  up_write(&_hash_lock);
  r = -ENXIO;
  goto out;
 }

 if (hc->new_map)
  dm_table_destroy(hc->new_map);
 hc->new_map = t;
 up_write(&_hash_lock);

 param->flags |= DM_INACTIVE_PRESENT_FLAG;
 __dev_status(md, param);

out:
 dm_put(md);

 return r;
}
