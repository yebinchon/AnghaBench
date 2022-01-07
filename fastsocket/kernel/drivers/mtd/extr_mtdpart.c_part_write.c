
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_info {int flags; scalar_t__ size; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,scalar_t__,size_t,size_t*,int const*) ;} ;


 int EROFS ;
 int MTD_WRITEABLE ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,scalar_t__,size_t,size_t*,int const*) ;

__attribute__((used)) static int part_write(struct mtd_info *mtd, loff_t to, size_t len,
  size_t *retlen, const u_char *buf)
{
 struct mtd_part *part = PART(mtd);
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 if (to >= mtd->size)
  len = 0;
 else if (to + len > mtd->size)
  len = mtd->size - to;
 return part->master->write(part->master, to + part->offset,
        len, retlen, buf);
}
