
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {scalar_t__ vol_type; int usable_leb_size; } ;
struct ubi_device {int min_io_size; } ;


 int ALIGN (int,int ) ;
 scalar_t__ UBI_DYNAMIC_VOLUME ;
 int UBI_UNKNOWN ;
 int dbg_gen (char*,int) ;
 int memset (void*,int,int) ;
 int ubi_calc_data_len (struct ubi_device*,void*,int) ;
 int ubi_eba_write_leb (struct ubi_device*,struct ubi_volume*,int,void*,int ,int,int ) ;
 int ubi_eba_write_leb_st (struct ubi_device*,struct ubi_volume*,int,void*,int,int ,int) ;

__attribute__((used)) static int write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
       void *buf, int len, int used_ebs)
{
 int err;

 if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
  int l = ALIGN(len, ubi->min_io_size);

  memset(buf + len, 0xFF, l - len);
  len = ubi_calc_data_len(ubi, buf, l);
  if (len == 0) {
   dbg_gen("all %d bytes contain 0xFF - skip", len);
   return 0;
  }

  err = ubi_eba_write_leb(ubi, vol, lnum, buf, 0, len,
     UBI_UNKNOWN);
 } else {
  memset(buf + len, 0, vol->usable_leb_size - len);
  err = ubi_eba_write_leb_st(ubi, vol, lnum, buf, len,
        UBI_UNKNOWN, used_ebs);
 }

 return err;
}
