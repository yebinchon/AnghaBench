
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_vtbl_record {int dummy; } ;
struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {int reserved_pebs; int name; } ;
struct ubi_device {scalar_t__ avail_pebs; TYPE_1__* vtbl; struct ubi_volume** volumes; } ;
struct TYPE_2__ {int flags; } ;


 int UBI_VTBL_AUTORESIZE_FLG ;
 int memcpy (struct ubi_vtbl_record*,TYPE_1__*,int) ;
 int ubi_change_vtbl_record (struct ubi_device*,int,struct ubi_vtbl_record*) ;
 int ubi_err (char*,int) ;
 int ubi_msg (char*,int,int ,int,int) ;
 int ubi_resize_volume (struct ubi_volume_desc*,scalar_t__) ;

__attribute__((used)) static int autoresize(struct ubi_device *ubi, int vol_id)
{
 struct ubi_volume_desc desc;
 struct ubi_volume *vol = ubi->volumes[vol_id];
 int err, old_reserved_pebs = vol->reserved_pebs;






 ubi->vtbl[vol_id].flags &= ~UBI_VTBL_AUTORESIZE_FLG;

 if (ubi->avail_pebs == 0) {
  struct ubi_vtbl_record vtbl_rec;





  memcpy(&vtbl_rec, &ubi->vtbl[vol_id],
         sizeof(struct ubi_vtbl_record));
  err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
  if (err)
   ubi_err("cannot clean auto-resize flag for volume %d",
    vol_id);
 } else {
  desc.vol = vol;
  err = ubi_resize_volume(&desc,
     old_reserved_pebs + ubi->avail_pebs);
  if (err)
   ubi_err("cannot auto-resize volume %d", vol_id);
 }

 if (err)
  return err;

 ubi_msg("volume %d (\"%s\") re-sized from %d to %d LEBs", vol_id,
  vol->name, old_reserved_pebs, vol->reserved_pebs);
 return 0;
}
