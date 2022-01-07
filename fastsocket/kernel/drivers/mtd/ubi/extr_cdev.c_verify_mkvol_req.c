
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_mkvol_req {scalar_t__ bytes; int alignment; scalar_t__ vol_type; int name_len; scalar_t__ vol_id; int name; } ;
struct ubi_device {scalar_t__ vtbl_slots; int leb_size; int min_io_size; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 scalar_t__ UBI_DYNAMIC_VOLUME ;
 scalar_t__ UBI_STATIC_VOLUME ;
 int UBI_VOL_NAME_MAX ;
 scalar_t__ UBI_VOL_NUM_AUTO ;
 int dbg_err (char*) ;
 int strnlen (int ,int) ;
 int ubi_dbg_dump_mkvol_req (struct ubi_mkvol_req const*) ;

__attribute__((used)) static int verify_mkvol_req(const struct ubi_device *ubi,
       const struct ubi_mkvol_req *req)
{
 int n, err = -EINVAL;

 if (req->bytes < 0 || req->alignment < 0 || req->vol_type < 0 ||
     req->name_len < 0)
  goto bad;

 if ((req->vol_id < 0 || req->vol_id >= ubi->vtbl_slots) &&
     req->vol_id != UBI_VOL_NUM_AUTO)
  goto bad;

 if (req->alignment == 0)
  goto bad;

 if (req->bytes == 0)
  goto bad;

 if (req->vol_type != UBI_DYNAMIC_VOLUME &&
     req->vol_type != UBI_STATIC_VOLUME)
  goto bad;

 if (req->alignment > ubi->leb_size)
  goto bad;

 n = req->alignment & (ubi->min_io_size - 1);
 if (req->alignment != 1 && n)
  goto bad;

 if (req->name_len > UBI_VOL_NAME_MAX) {
  err = -ENAMETOOLONG;
  goto bad;
 }

 n = strnlen(req->name, req->name_len + 1);
 if (n != req->name_len)
  goto bad;

 return 0;

bad:
 dbg_err("bad volume creation request");
 ubi_dbg_dump_mkvol_req(req);
 return err;
}
