
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vtbl_record {int reserved_pebs; } ;
struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {int vol_id; int reserved_pebs; scalar_t__ vol_type; int used_ebs; int ref_count; int* eba_tbl; long long last_eb_bytes; long long usable_leb_size; long long used_bytes; struct ubi_device* ubi; } ;
struct ubi_device {int avail_pebs; int rsvd_pebs; int beb_rsvd_level; int beb_rsvd_pebs; int volumes_lock; int * vtbl; int ubi_num; scalar_t__ ro_mode; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int EROFS ;
 int GFP_KERNEL ;
 scalar_t__ UBI_DYNAMIC_VOLUME ;
 int UBI_LEB_UNMAPPED ;
 scalar_t__ UBI_STATIC_VOLUME ;
 int UBI_VOLUME_RESIZED ;
 int cpu_to_be32 (int) ;
 int dbg_err (char*,int,...) ;
 int dbg_gen (char*,int ,int,int,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (struct ubi_vtbl_record*,int *,int) ;
 scalar_t__ paranoid_check_volumes (struct ubi_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_change_vtbl_record (struct ubi_device*,int,struct ubi_vtbl_record*) ;
 int ubi_eba_unmap_leb (struct ubi_device*,struct ubi_volume*,int) ;
 int ubi_msg (char*,int) ;
 int ubi_volume_notify (struct ubi_device*,struct ubi_volume*,int ) ;

int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
{
 int i, err, pebs, *new_mapping;
 struct ubi_volume *vol = desc->vol;
 struct ubi_device *ubi = vol->ubi;
 struct ubi_vtbl_record vtbl_rec;
 int vol_id = vol->vol_id;

 if (ubi->ro_mode)
  return -EROFS;

 dbg_gen("re-size device %d, volume %d to from %d to %d PEBs",
  ubi->ubi_num, vol_id, vol->reserved_pebs, reserved_pebs);

 if (vol->vol_type == UBI_STATIC_VOLUME &&
     reserved_pebs < vol->used_ebs) {
  dbg_err("too small size %d, %d LEBs contain data",
   reserved_pebs, vol->used_ebs);
  return -EINVAL;
 }


 if (reserved_pebs == vol->reserved_pebs)
  return 0;

 new_mapping = kmalloc(reserved_pebs * sizeof(int), GFP_KERNEL);
 if (!new_mapping)
  return -ENOMEM;

 for (i = 0; i < reserved_pebs; i++)
  new_mapping[i] = UBI_LEB_UNMAPPED;

 spin_lock(&ubi->volumes_lock);
 if (vol->ref_count > 1) {
  spin_unlock(&ubi->volumes_lock);
  err = -EBUSY;
  goto out_free;
 }
 spin_unlock(&ubi->volumes_lock);


 pebs = reserved_pebs - vol->reserved_pebs;
 if (pebs > 0) {
  spin_lock(&ubi->volumes_lock);
  if (pebs > ubi->avail_pebs) {
   dbg_err("not enough PEBs: requested %d, available %d",
    pebs, ubi->avail_pebs);
   spin_unlock(&ubi->volumes_lock);
   err = -ENOSPC;
   goto out_free;
  }
  ubi->avail_pebs -= pebs;
  ubi->rsvd_pebs += pebs;
  for (i = 0; i < vol->reserved_pebs; i++)
   new_mapping[i] = vol->eba_tbl[i];
  kfree(vol->eba_tbl);
  vol->eba_tbl = new_mapping;
  spin_unlock(&ubi->volumes_lock);
 }


 memcpy(&vtbl_rec, &ubi->vtbl[vol_id], sizeof(struct ubi_vtbl_record));
 vtbl_rec.reserved_pebs = cpu_to_be32(reserved_pebs);
 err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
 if (err)
  goto out_acc;

 if (pebs < 0) {
  for (i = 0; i < -pebs; i++) {
   err = ubi_eba_unmap_leb(ubi, vol, reserved_pebs + i);
   if (err)
    goto out_acc;
  }
  spin_lock(&ubi->volumes_lock);
  ubi->rsvd_pebs += pebs;
  ubi->avail_pebs -= pebs;
  pebs = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs;
  if (pebs > 0) {
   pebs = ubi->avail_pebs >= pebs ? pebs : ubi->avail_pebs;
   ubi->avail_pebs -= pebs;
   ubi->rsvd_pebs += pebs;
   ubi->beb_rsvd_pebs += pebs;
   if (pebs > 0)
    ubi_msg("reserve more %d PEBs", pebs);
  }
  for (i = 0; i < reserved_pebs; i++)
   new_mapping[i] = vol->eba_tbl[i];
  kfree(vol->eba_tbl);
  vol->eba_tbl = new_mapping;
  spin_unlock(&ubi->volumes_lock);
 }

 vol->reserved_pebs = reserved_pebs;
 if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
  vol->used_ebs = reserved_pebs;
  vol->last_eb_bytes = vol->usable_leb_size;
  vol->used_bytes =
   (long long)vol->used_ebs * vol->usable_leb_size;
 }

 ubi_volume_notify(ubi, vol, UBI_VOLUME_RESIZED);
 if (paranoid_check_volumes(ubi))
  dbg_err("check failed while re-sizing volume %d", vol_id);
 return err;

out_acc:
 if (pebs > 0) {
  spin_lock(&ubi->volumes_lock);
  ubi->rsvd_pebs -= pebs;
  ubi->avail_pebs += pebs;
  spin_unlock(&ubi->volumes_lock);
 }
out_free:
 kfree(new_mapping);
 return err;
}
