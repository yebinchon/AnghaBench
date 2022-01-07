
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_device {int ubi_num; int dev; TYPE_1__* mtd; int dbg_peb_buf; int peb_buf2; int peb_buf1; int vtbl; scalar_t__ bgt_thread; int reboot_notifier; scalar_t__ ref_count; int ubi_name; } ;
struct TYPE_2__ {int index; } ;


 int EBUSY ;
 int EINVAL ;
 int UBI_MAX_DEVICES ;
 int UBI_VOLUME_REMOVED ;
 int dbg_msg (char*,int ,int) ;
 int free_internal_volumes (struct ubi_device*) ;
 int get_device (int *) ;
 int kthread_stop (scalar_t__) ;
 int put_device (int *) ;
 int put_mtd_device (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int ** ubi_devices ;
 int ubi_devices_lock ;
 int ubi_err (char*,int ,scalar_t__) ;
 struct ubi_device* ubi_get_device (int) ;
 int ubi_msg (char*,int ,int) ;
 int ubi_notify_all (struct ubi_device*,int ,int *) ;
 int ubi_wl_close (struct ubi_device*) ;
 int uif_close (struct ubi_device*) ;
 int unregister_reboot_notifier (int *) ;
 int vfree (int ) ;

int ubi_detach_mtd_dev(int ubi_num, int anyway)
{
 struct ubi_device *ubi;

 if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
  return -EINVAL;

 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return -EINVAL;

 spin_lock(&ubi_devices_lock);
 put_device(&ubi->dev);
 ubi->ref_count -= 1;
 if (ubi->ref_count) {
  if (!anyway) {
   spin_unlock(&ubi_devices_lock);
   return -EBUSY;
  }

  ubi_err("%s reference count %d, destroy anyway",
   ubi->ubi_name, ubi->ref_count);
 }
 ubi_devices[ubi_num] = ((void*)0);
 spin_unlock(&ubi_devices_lock);

 ubi_assert(ubi_num == ubi->ubi_num);
 ubi_notify_all(ubi, UBI_VOLUME_REMOVED, ((void*)0));
 dbg_msg("detaching mtd%d from ubi%d", ubi->mtd->index, ubi_num);





 unregister_reboot_notifier(&ubi->reboot_notifier);
 if (ubi->bgt_thread)
  kthread_stop(ubi->bgt_thread);





 get_device(&ubi->dev);

 uif_close(ubi);
 ubi_wl_close(ubi);
 free_internal_volumes(ubi);
 vfree(ubi->vtbl);
 put_mtd_device(ubi->mtd);
 vfree(ubi->peb_buf1);
 vfree(ubi->peb_buf2);



 ubi_msg("mtd%d is detached from ubi%d", ubi->mtd->index, ubi->ubi_num);
 put_device(&ubi->dev);
 return 0;
}
