
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubi_vtbl_record {int upd_marker; int vol_type; char* name; int name_len; int crc; int data_pad; int alignment; int reserved_pebs; } ;
struct ubi_device {int vtbl_slots; int leb_size; int min_io_size; int good_peb_count; } ;


 int EINVAL ;
 int UBI_CRC32_INIT ;
 int UBI_VID_DYNAMIC ;
 int UBI_VID_STATIC ;
 int UBI_VOL_NAME_MAX ;
 int UBI_VTBL_RECORD_SIZE ;
 int UBI_VTBL_RECORD_SIZE_CRC ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cond_resched () ;
 int crc32 (int ,struct ubi_vtbl_record const*,int ) ;
 int dbg_err (char*,int,...) ;
 int empty_vtbl_record ;
 scalar_t__ memcmp (struct ubi_vtbl_record const*,int *,int ) ;
 int strncmp (char*,char*,int) ;
 int strnlen (char const*,int) ;
 int ubi_dbg_dump_vtbl_record (struct ubi_vtbl_record const*,int) ;
 int ubi_err (char*,int,int,...) ;

__attribute__((used)) static int vtbl_check(const struct ubi_device *ubi,
        const struct ubi_vtbl_record *vtbl)
{
 int i, n, reserved_pebs, alignment, data_pad, vol_type, name_len;
 int upd_marker, err;
 uint32_t crc;
 const char *name;

 for (i = 0; i < ubi->vtbl_slots; i++) {
  cond_resched();

  reserved_pebs = be32_to_cpu(vtbl[i].reserved_pebs);
  alignment = be32_to_cpu(vtbl[i].alignment);
  data_pad = be32_to_cpu(vtbl[i].data_pad);
  upd_marker = vtbl[i].upd_marker;
  vol_type = vtbl[i].vol_type;
  name_len = be16_to_cpu(vtbl[i].name_len);
  name = &vtbl[i].name[0];

  crc = crc32(UBI_CRC32_INIT, &vtbl[i], UBI_VTBL_RECORD_SIZE_CRC);
  if (be32_to_cpu(vtbl[i].crc) != crc) {
   ubi_err("bad CRC at record %u: %#08x, not %#08x",
     i, crc, be32_to_cpu(vtbl[i].crc));
   ubi_dbg_dump_vtbl_record(&vtbl[i], i);
   return 1;
  }

  if (reserved_pebs == 0) {
   if (memcmp(&vtbl[i], &empty_vtbl_record,
      UBI_VTBL_RECORD_SIZE)) {
    err = 2;
    goto bad;
   }
   continue;
  }

  if (reserved_pebs < 0 || alignment < 0 || data_pad < 0 ||
      name_len < 0) {
   err = 3;
   goto bad;
  }

  if (alignment > ubi->leb_size || alignment == 0) {
   err = 4;
   goto bad;
  }

  n = alignment & (ubi->min_io_size - 1);
  if (alignment != 1 && n) {
   err = 5;
   goto bad;
  }

  n = ubi->leb_size % alignment;
  if (data_pad != n) {
   dbg_err("bad data_pad, has to be %d", n);
   err = 6;
   goto bad;
  }

  if (vol_type != UBI_VID_DYNAMIC && vol_type != UBI_VID_STATIC) {
   err = 7;
   goto bad;
  }

  if (upd_marker != 0 && upd_marker != 1) {
   err = 8;
   goto bad;
  }

  if (reserved_pebs > ubi->good_peb_count) {
   dbg_err("too large reserved_pebs %d, good PEBs %d",
    reserved_pebs, ubi->good_peb_count);
   err = 9;
   goto bad;
  }

  if (name_len > UBI_VOL_NAME_MAX) {
   err = 10;
   goto bad;
  }

  if (name[0] == '\0') {
   err = 11;
   goto bad;
  }

  if (name_len != strnlen(name, name_len + 1)) {
   err = 12;
   goto bad;
  }
 }


 for (i = 0; i < ubi->vtbl_slots - 1; i++) {
  for (n = i + 1; n < ubi->vtbl_slots; n++) {
   int len1 = be16_to_cpu(vtbl[i].name_len);
   int len2 = be16_to_cpu(vtbl[n].name_len);

   if (len1 > 0 && len1 == len2 &&
       !strncmp(vtbl[i].name, vtbl[n].name, len1)) {
    ubi_err("volumes %d and %d have the same name"
     " \"%s\"", i, n, vtbl[i].name);
    ubi_dbg_dump_vtbl_record(&vtbl[i], i);
    ubi_dbg_dump_vtbl_record(&vtbl[n], n);
    return -EINVAL;
   }
  }
 }

 return 0;

bad:
 ubi_err("volume table check failed: record %d, error %d", i, err);
 ubi_dbg_dump_vtbl_record(&vtbl[i], i);
 return -EINVAL;
}
