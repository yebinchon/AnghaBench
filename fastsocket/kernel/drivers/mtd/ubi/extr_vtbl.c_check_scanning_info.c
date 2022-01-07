
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {scalar_t__ reserved_pebs; } ;
struct ubi_scan_volume {int vol_id; } ;
struct ubi_scan_info {scalar_t__ vols_found; scalar_t__ highest_vol_id; } ;
struct ubi_device {scalar_t__ vtbl_slots; struct ubi_volume** volumes; } ;


 int EINVAL ;
 scalar_t__ UBI_INTERNAL_VOL_START ;
 scalar_t__ UBI_INT_VOL_COUNT ;
 int check_sv (struct ubi_volume*,struct ubi_scan_volume*) ;
 int cond_resched () ;
 int ubi_assert (int) ;
 int ubi_err (char*,scalar_t__,...) ;
 int ubi_msg (char*,int ) ;
 struct ubi_scan_volume* ubi_scan_find_sv (struct ubi_scan_info*,int) ;
 int ubi_scan_rm_volume (struct ubi_scan_info*,struct ubi_scan_volume*) ;

__attribute__((used)) static int check_scanning_info(const struct ubi_device *ubi,
          struct ubi_scan_info *si)
{
 int err, i;
 struct ubi_scan_volume *sv;
 struct ubi_volume *vol;

 if (si->vols_found > UBI_INT_VOL_COUNT + ubi->vtbl_slots) {
  ubi_err("scanning found %d volumes, maximum is %d + %d",
   si->vols_found, UBI_INT_VOL_COUNT, ubi->vtbl_slots);
  return -EINVAL;
 }

 if (si->highest_vol_id >= ubi->vtbl_slots + UBI_INT_VOL_COUNT &&
     si->highest_vol_id < UBI_INTERNAL_VOL_START) {
  ubi_err("too large volume ID %d found by scanning",
   si->highest_vol_id);
  return -EINVAL;
 }

 for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
  cond_resched();

  sv = ubi_scan_find_sv(si, i);
  vol = ubi->volumes[i];
  if (!vol) {
   if (sv)
    ubi_scan_rm_volume(si, sv);
   continue;
  }

  if (vol->reserved_pebs == 0) {
   ubi_assert(i < ubi->vtbl_slots);

   if (!sv)
    continue;
   ubi_msg("finish volume %d removal", sv->vol_id);
   ubi_scan_rm_volume(si, sv);
  } else if (sv) {
   err = check_sv(vol, sv);
   if (err)
    return err;
  }
 }

 return 0;
}
