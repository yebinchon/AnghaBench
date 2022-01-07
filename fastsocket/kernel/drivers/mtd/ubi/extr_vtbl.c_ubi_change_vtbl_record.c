
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubi_vtbl_record {int crc; } ;
struct ubi_volume {int dummy; } ;
struct ubi_device {int vtbl_slots; int vtbl_size; int * vtbl; struct ubi_volume** volumes; } ;


 int UBI_CRC32_INIT ;
 int UBI_LAYOUT_VOLUME_EBS ;
 int UBI_LAYOUT_VOLUME_ID ;
 int UBI_LONGTERM ;
 int UBI_VTBL_RECORD_SIZE_CRC ;
 int cpu_to_be32 (int ) ;
 int crc32 (int ,struct ubi_vtbl_record*,int ) ;
 struct ubi_vtbl_record empty_vtbl_record ;
 int memcpy (int *,struct ubi_vtbl_record*,int) ;
 int paranoid_vtbl_check (struct ubi_device*) ;
 int ubi_assert (int) ;
 int ubi_eba_unmap_leb (struct ubi_device*,struct ubi_volume*,int) ;
 int ubi_eba_write_leb (struct ubi_device*,struct ubi_volume*,int,int *,int ,int ,int ) ;
 size_t vol_id2idx (struct ubi_device*,int ) ;

int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
      struct ubi_vtbl_record *vtbl_rec)
{
 int i, err;
 uint32_t crc;
 struct ubi_volume *layout_vol;

 ubi_assert(idx >= 0 && idx < ubi->vtbl_slots);
 layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];

 if (!vtbl_rec)
  vtbl_rec = &empty_vtbl_record;
 else {
  crc = crc32(UBI_CRC32_INIT, vtbl_rec, UBI_VTBL_RECORD_SIZE_CRC);
  vtbl_rec->crc = cpu_to_be32(crc);
 }

 memcpy(&ubi->vtbl[idx], vtbl_rec, sizeof(struct ubi_vtbl_record));
 for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
  err = ubi_eba_unmap_leb(ubi, layout_vol, i);
  if (err)
   return err;

  err = ubi_eba_write_leb(ubi, layout_vol, i, ubi->vtbl, 0,
     ubi->vtbl_size, UBI_LONGTERM);
  if (err)
   return err;
 }

 paranoid_vtbl_check(ubi);
 return 0;
}
