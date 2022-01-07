
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {scalar_t__ mode; struct ubi_volume* vol; } ;
struct ubi_volume {scalar_t__ vol_type; int reserved_pebs; scalar_t__* eba_tbl; scalar_t__ upd_marker; int vol_id; struct ubi_device* ubi; } ;
struct ubi_device {int dummy; } ;


 int EBADF ;
 int EBADMSG ;
 int EINVAL ;
 int EROFS ;
 int UBI_LONGTERM ;
 scalar_t__ UBI_READONLY ;
 int UBI_SHORTTERM ;
 scalar_t__ UBI_STATIC_VOLUME ;
 int UBI_UNKNOWN ;
 int dbg_gen (char*,int ,int) ;
 int ubi_eba_write_leb (struct ubi_device*,struct ubi_volume*,int,int *,int ,int ,int) ;

int ubi_leb_map(struct ubi_volume_desc *desc, int lnum, int dtype)
{
 struct ubi_volume *vol = desc->vol;
 struct ubi_device *ubi = vol->ubi;

 dbg_gen("unmap LEB %d:%d", vol->vol_id, lnum);

 if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
  return -EROFS;

 if (lnum < 0 || lnum >= vol->reserved_pebs)
  return -EINVAL;

 if (dtype != UBI_LONGTERM && dtype != UBI_SHORTTERM &&
     dtype != UBI_UNKNOWN)
  return -EINVAL;

 if (vol->upd_marker)
  return -EBADF;

 if (vol->eba_tbl[lnum] >= 0)
  return -EBADMSG;

 return ubi_eba_write_leb(ubi, vol, lnum, ((void*)0), 0, 0, dtype);
}
