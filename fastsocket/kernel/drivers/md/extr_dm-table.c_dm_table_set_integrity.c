
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct dm_table {int md; } ;


 int DMWARN (char*,int ) ;
 int blk_get_integrity (struct gendisk*) ;
 scalar_t__ blk_integrity_is_initialized (struct gendisk*) ;
 int blk_integrity_register (struct gendisk*,int ) ;
 int dm_device_name (int ) ;
 struct gendisk* dm_disk (int ) ;
 struct gendisk* dm_table_get_integrity_disk (struct dm_table*,int) ;

__attribute__((used)) static void dm_table_set_integrity(struct dm_table *t)
{
 struct gendisk *template_disk = ((void*)0);

 if (!blk_get_integrity(dm_disk(t->md)))
  return;

 template_disk = dm_table_get_integrity_disk(t, 1);
 if (template_disk)
  blk_integrity_register(dm_disk(t->md),
           blk_get_integrity(template_disk));
 else if (blk_integrity_is_initialized(dm_disk(t->md)))
  DMWARN("%s: device no longer has a valid integrity profile",
         dm_device_name(t->md));
 else
  DMWARN("%s: unable to establish an integrity profile",
         dm_device_name(t->md));
}
