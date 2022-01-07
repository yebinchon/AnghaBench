
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int vol_id; int* eba_tbl; } ;
struct ubi_device {scalar_t__ ro_mode; } ;


 int EROFS ;
 int UBI_LEB_UNMAPPED ;
 int dbg_eba (char*,int,int,int) ;
 int leb_write_lock (struct ubi_device*,int,int) ;
 int leb_write_unlock (struct ubi_device*,int,int) ;
 int ubi_wl_put_peb (struct ubi_device*,int,int ) ;

int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
        int lnum)
{
 int err, pnum, vol_id = vol->vol_id;

 if (ubi->ro_mode)
  return -EROFS;

 err = leb_write_lock(ubi, vol_id, lnum);
 if (err)
  return err;

 pnum = vol->eba_tbl[lnum];
 if (pnum < 0)

  goto out_unlock;

 dbg_eba("erase LEB %d:%d, PEB %d", vol_id, lnum, pnum);

 vol->eba_tbl[lnum] = UBI_LEB_UNMAPPED;
 err = ubi_wl_put_peb(ubi, pnum, 0);

out_unlock:
 leb_write_unlock(ubi, vol_id, lnum);
 return err;
}
