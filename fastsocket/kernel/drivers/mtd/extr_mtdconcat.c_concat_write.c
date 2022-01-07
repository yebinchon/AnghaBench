
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int flags; scalar_t__ size; int (* write ) (struct mtd_info*,scalar_t__,size_t,size_t*,int const*) ;} ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef scalar_t__ loff_t ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int EINVAL ;
 int EROFS ;
 int MTD_WRITEABLE ;
 int stub1 (struct mtd_info*,scalar_t__,size_t,size_t*,int const*) ;

__attribute__((used)) static int
concat_write(struct mtd_info *mtd, loff_t to, size_t len,
      size_t * retlen, const u_char * buf)
{
 struct mtd_concat *concat = CONCAT(mtd);
 int err = -EINVAL;
 int i;

 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;

 *retlen = 0;

 for (i = 0; i < concat->num_subdev; i++) {
  struct mtd_info *subdev = concat->subdev[i];
  size_t size, retsize;

  if (to >= subdev->size) {
   size = 0;
   to -= subdev->size;
   continue;
  }
  if (to + len > subdev->size)
   size = subdev->size - to;
  else
   size = len;

  if (!(subdev->flags & MTD_WRITEABLE))
   err = -EROFS;
  else
   err = subdev->write(subdev, to, size, &retsize, buf);

  if (err)
   break;

  *retlen += retsize;
  len -= size;
  if (len == 0)
   break;

  err = -EINVAL;
  buf += size;
  to = 0;
 }
 return err;
}
