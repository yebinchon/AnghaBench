
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct gendisk {int disk_name; } ;
struct dm_table {int integrity_supported; int md; } ;


 int DMWARN (char*,int ,int ) ;
 scalar_t__ blk_integrity_compare (struct gendisk*,struct gendisk*) ;
 scalar_t__ blk_integrity_is_initialized (struct gendisk*) ;
 int blk_integrity_register (struct gendisk*,int *) ;
 int dm_device_name (int ) ;
 struct gendisk* dm_disk (struct mapped_device*) ;
 struct gendisk* dm_table_get_integrity_disk (struct dm_table*,int) ;

__attribute__((used)) static int dm_table_prealloc_integrity(struct dm_table *t, struct mapped_device *md)
{
 struct gendisk *template_disk = ((void*)0);

 template_disk = dm_table_get_integrity_disk(t, 0);
 if (!template_disk)
  return 0;

 if (!blk_integrity_is_initialized(dm_disk(md))) {
  t->integrity_supported = 1;
  return blk_integrity_register(dm_disk(md), ((void*)0));
 }





 if (blk_integrity_is_initialized(template_disk) &&
     blk_integrity_compare(dm_disk(md), template_disk) < 0) {
  DMWARN("%s: conflict with existing integrity profile: "
         "%s profile mismatch",
         dm_device_name(t->md),
         template_disk->disk_name);
  return 1;
 }


 t->integrity_supported = 1;
 return 0;
}
