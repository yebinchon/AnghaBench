
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {scalar_t__ partno; } ;
struct gendisk {scalar_t__ minors; scalar_t__ first_minor; int major; } ;
typedef int dev_t ;


 int BLOCK_EXT_MAJOR ;
 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_EXT_DEVT ;
 int MKDEV (int ,scalar_t__) ;
 scalar_t__ blk_mangle_minor (int) ;
 int ext_devt_idr ;
 int ext_devt_mutex ;
 int idr_get_new (int *,struct hd_struct*,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gendisk* part_to_disk (struct hd_struct*) ;

int blk_alloc_devt(struct hd_struct *part, dev_t *devt)
{
 struct gendisk *disk = part_to_disk(part);
 int idx, rc;


 if (part->partno < disk->minors) {
  *devt = MKDEV(disk->major, disk->first_minor + part->partno);
  return 0;
 }


 do {
  if (!idr_pre_get(&ext_devt_idr, GFP_KERNEL))
   return -ENOMEM;
  mutex_lock(&ext_devt_mutex);
  rc = idr_get_new(&ext_devt_idr, part, &idx);
  mutex_unlock(&ext_devt_mutex);
 } while (rc == -EAGAIN);

 if (rc)
  return rc;

 if (idx > MAX_EXT_DEVT) {
  mutex_lock(&ext_devt_mutex);
  idr_remove(&ext_devt_idr, idx);
  mutex_unlock(&ext_devt_mutex);
  return -EBUSY;
 }

 *devt = MKDEV(BLOCK_EXT_MAJOR, blk_mangle_minor(idx));
 return 0;
}
