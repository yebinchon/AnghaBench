
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; int notifier_call; } ;
struct ubi_device {int ubi_num; int vid_hdr_offset; int autoresize_vol_id; int flash_size; int good_peb_count; int bad_peb_count; int vtbl_slots; int vol_count; int avail_pebs; int rsvd_pebs; int beb_rsvd_pebs; int image_seq; int thread_enabled; void* dbg_peb_buf; void* peb_buf2; void* peb_buf1; void* vtbl; TYPE_1__ reboot_notifier; int wl_lock; int bgt_thread; int mean_ec; int max_ec; int bgt_name; int peb_size; int dbg_buf_mutex; int volumes_lock; int device_mutex; int ckvol_mutex; int buf_mutex; struct mtd_info* mtd; } ;
struct mtd_info {scalar_t__ index; scalar_t__ type; int name; } ;


 int CONFIG_MTD_UBI_WL_THRESHOLD ;
 int DBG_DISABLE_BGT ;
 int EEXIST ;
 int EINVAL ;
 int ENFILE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MTD_UBIVOLUME ;
 int PTR_ERR (int ) ;
 int UBI_DEV_NUM_AUTO ;
 int UBI_INT_VOL_COUNT ;
 int UBI_MAX_DEVICES ;
 int UBI_VOLUME_ADDED ;
 int attach_by_scanning (struct ubi_device*) ;
 int autoresize (struct ubi_device*,int) ;
 int dbg_err (char*,int,...) ;
 int free_internal_volumes (struct ubi_device*) ;
 int free_user_volumes (struct ubi_device*) ;
 int io_init (struct ubi_device*) ;
 int kfree (struct ubi_device*) ;
 int kthread_create (int ,struct ubi_device*,int ) ;
 struct ubi_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int register_reboot_notifier (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 struct ubi_device** ubi_devices ;
 int ubi_err (char*,scalar_t__,...) ;
 int ubi_msg (char*,int,...) ;
 int ubi_notify_all (struct ubi_device*,int ,int *) ;
 int ubi_reboot_notifier ;
 int ubi_thread ;
 int ubi_wl_close (struct ubi_device*) ;
 int uif_close (struct ubi_device*) ;
 int uif_init (struct ubi_device*) ;
 int vfree (void*) ;
 void* vmalloc (int ) ;
 int wake_up_process (int ) ;

int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset)
{
 struct ubi_device *ubi;
 int i, err, do_free = 1;







 for (i = 0; i < UBI_MAX_DEVICES; i++) {
  ubi = ubi_devices[i];
  if (ubi && mtd->index == ubi->mtd->index) {
   dbg_err("mtd%d is already attached to ubi%d",
    mtd->index, i);
   return -EEXIST;
  }
 }
 if (mtd->type == MTD_UBIVOLUME) {
  ubi_err("refuse attaching mtd%d - it is already emulated on "
   "top of UBI", mtd->index);
  return -EINVAL;
 }

 if (ubi_num == UBI_DEV_NUM_AUTO) {

  for (ubi_num = 0; ubi_num < UBI_MAX_DEVICES; ubi_num++)
   if (!ubi_devices[ubi_num])
    break;
  if (ubi_num == UBI_MAX_DEVICES) {
   dbg_err("only %d UBI devices may be created",
    UBI_MAX_DEVICES);
   return -ENFILE;
  }
 } else {
  if (ubi_num >= UBI_MAX_DEVICES)
   return -EINVAL;


  if (ubi_devices[ubi_num]) {
   dbg_err("ubi%d already exists", ubi_num);
   return -EEXIST;
  }
 }

 ubi = kzalloc(sizeof(struct ubi_device), GFP_KERNEL);
 if (!ubi)
  return -ENOMEM;

 ubi->mtd = mtd;
 ubi->ubi_num = ubi_num;
 ubi->vid_hdr_offset = vid_hdr_offset;
 ubi->autoresize_vol_id = -1;

 mutex_init(&ubi->buf_mutex);
 mutex_init(&ubi->ckvol_mutex);
 mutex_init(&ubi->device_mutex);
 spin_lock_init(&ubi->volumes_lock);

 ubi_msg("attaching mtd%d to ubi%d", mtd->index, ubi_num);

 err = io_init(ubi);
 if (err)
  goto out_free;

 err = -ENOMEM;
 ubi->peb_buf1 = vmalloc(ubi->peb_size);
 if (!ubi->peb_buf1)
  goto out_free;

 ubi->peb_buf2 = vmalloc(ubi->peb_size);
 if (!ubi->peb_buf2)
  goto out_free;
 err = attach_by_scanning(ubi);
 if (err) {
  dbg_err("failed to attach by scanning, error %d", err);
  goto out_free;
 }

 if (ubi->autoresize_vol_id != -1) {
  err = autoresize(ubi, ubi->autoresize_vol_id);
  if (err)
   goto out_detach;
 }

 err = uif_init(ubi);
 if (err)
  goto out_nofree;

 ubi->bgt_thread = kthread_create(ubi_thread, ubi, ubi->bgt_name);
 if (IS_ERR(ubi->bgt_thread)) {
  err = PTR_ERR(ubi->bgt_thread);
  ubi_err("cannot spawn \"%s\", error %d", ubi->bgt_name,
   err);
  goto out_uif;
 }

 ubi_msg("attached mtd%d to ubi%d", mtd->index, ubi_num);
 ubi_msg("MTD device name:            \"%s\"", mtd->name);
 ubi_msg("MTD device size:            %llu MiB", ubi->flash_size >> 20);
 ubi_msg("number of good PEBs:        %d", ubi->good_peb_count);
 ubi_msg("number of bad PEBs:         %d", ubi->bad_peb_count);
 ubi_msg("max. allowed volumes:       %d", ubi->vtbl_slots);
 ubi_msg("wear-leveling threshold:    %d", CONFIG_MTD_UBI_WL_THRESHOLD);
 ubi_msg("number of internal volumes: %d", UBI_INT_VOL_COUNT);
 ubi_msg("number of user volumes:     %d",
  ubi->vol_count - UBI_INT_VOL_COUNT);
 ubi_msg("available PEBs:             %d", ubi->avail_pebs);
 ubi_msg("total number of reserved PEBs: %d", ubi->rsvd_pebs);
 ubi_msg("number of PEBs reserved for bad PEB handling: %d",
  ubi->beb_rsvd_pebs);
 ubi_msg("max/mean erase counter: %d/%d", ubi->max_ec, ubi->mean_ec);
 ubi_msg("image sequence number: %d", ubi->image_seq);





 spin_lock(&ubi->wl_lock);
 if (!DBG_DISABLE_BGT)
  ubi->thread_enabled = 1;
 wake_up_process(ubi->bgt_thread);
 spin_unlock(&ubi->wl_lock);


 ubi->reboot_notifier.priority = 1;
 ubi->reboot_notifier.notifier_call = ubi_reboot_notifier;
 register_reboot_notifier(&ubi->reboot_notifier);

 ubi_devices[ubi_num] = ubi;
 ubi_notify_all(ubi, UBI_VOLUME_ADDED, ((void*)0));
 return ubi_num;

out_uif:
 uif_close(ubi);
out_nofree:
 do_free = 0;
out_detach:
 ubi_wl_close(ubi);
 if (do_free)
  free_user_volumes(ubi);
 free_internal_volumes(ubi);
 vfree(ubi->vtbl);
out_free:
 vfree(ubi->peb_buf1);
 vfree(ubi->peb_buf2);



 kfree(ubi);
 return err;
}
