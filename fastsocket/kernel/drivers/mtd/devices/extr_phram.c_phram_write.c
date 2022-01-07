
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {scalar_t__ size; int * priv; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static int phram_write(struct mtd_info *mtd, loff_t to, size_t len,
  size_t *retlen, const u_char *buf)
{
 u_char *start = mtd->priv;

 if (to >= mtd->size)
  return -EINVAL;

 if (len > mtd->size - to)
  len = mtd->size - to;

 memcpy(start + to, buf, len);

 *retlen = len;
 return 0;
}
