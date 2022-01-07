
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {scalar_t__ reserved_pebs; scalar_t__ vol_type; scalar_t__ data_pad; } ;
struct ubi_scan_volume {scalar_t__ highest_lnum; scalar_t__ leb_count; scalar_t__ vol_type; scalar_t__ used_ebs; scalar_t__ data_pad; } ;


 int EINVAL ;
 int ubi_dbg_dump_sv (struct ubi_scan_volume const*) ;
 int ubi_dbg_dump_vol_info (struct ubi_volume const*) ;
 int ubi_err (char*,int) ;

__attribute__((used)) static int check_sv(const struct ubi_volume *vol,
      const struct ubi_scan_volume *sv)
{
 int err;

 if (sv->highest_lnum >= vol->reserved_pebs) {
  err = 1;
  goto bad;
 }
 if (sv->leb_count > vol->reserved_pebs) {
  err = 2;
  goto bad;
 }
 if (sv->vol_type != vol->vol_type) {
  err = 3;
  goto bad;
 }
 if (sv->used_ebs > vol->reserved_pebs) {
  err = 4;
  goto bad;
 }
 if (sv->data_pad != vol->data_pad) {
  err = 5;
  goto bad;
 }
 return 0;

bad:
 ubi_err("bad scanning information, error %d", err);
 ubi_dbg_dump_sv(sv);
 ubi_dbg_dump_vol_info(vol);
 return -EINVAL;
}
