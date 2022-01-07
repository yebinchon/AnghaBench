
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int peb_count; int peb_size; int bad_allowed; scalar_t__ ro_mode; struct mtd_info* mtd; } ;
struct mtd_info {int (* block_markbad ) (struct mtd_info*,int) ;} ;
typedef int loff_t ;


 int EROFS ;
 int stub1 (struct mtd_info*,int) ;
 int ubi_assert (int) ;
 int ubi_err (char*,...) ;

int ubi_io_mark_bad(const struct ubi_device *ubi, int pnum)
{
 int err;
 struct mtd_info *mtd = ubi->mtd;

 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);

 if (ubi->ro_mode) {
  ubi_err("read-only mode");
  return -EROFS;
 }

 if (!ubi->bad_allowed)
  return 0;

 err = mtd->block_markbad(mtd, (loff_t)pnum * ubi->peb_size);
 if (err)
  ubi_err("cannot mark PEB %d bad, error %d", pnum, err);
 return err;
}
