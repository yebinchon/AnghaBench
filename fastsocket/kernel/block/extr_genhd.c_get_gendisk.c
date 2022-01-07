
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct hd_struct {int partno; } ;
struct gendisk {int dummy; } ;
typedef int dev_t ;


 scalar_t__ BLOCK_EXT_MAJOR ;
 scalar_t__ MAJOR (int ) ;
 int MINOR (int ) ;
 int bdev_map ;
 int blk_mangle_minor (int ) ;
 struct gendisk* dev_to_disk (int ) ;
 int ext_devt_idr ;
 int ext_devt_mutex ;
 scalar_t__ get_disk (struct gendisk*) ;
 struct hd_struct* idr_find (int *,int ) ;
 struct kobject* kobj_lookup (int ,int ,int*) ;
 int kobj_to_dev (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gendisk* part_to_disk (struct hd_struct*) ;

struct gendisk *get_gendisk(dev_t devt, int *partno)
{
 struct gendisk *disk = ((void*)0);

 if (MAJOR(devt) != BLOCK_EXT_MAJOR) {
  struct kobject *kobj;

  kobj = kobj_lookup(bdev_map, devt, partno);
  if (kobj)
   disk = dev_to_disk(kobj_to_dev(kobj));
 } else {
  struct hd_struct *part;

  mutex_lock(&ext_devt_mutex);
  part = idr_find(&ext_devt_idr, blk_mangle_minor(MINOR(devt)));
  if (part && get_disk(part_to_disk(part))) {
   *partno = part->partno;
   disk = part_to_disk(part);
  }
  mutex_unlock(&ext_devt_mutex);
 }

 return disk;
}
