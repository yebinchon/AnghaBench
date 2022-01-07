
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {scalar_t__ size; scalar_t__ priv; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int memcpy (char*,int const*,size_t) ;

__attribute__((used)) static int ram_write(struct mtd_info *mtd, loff_t to, size_t len,
  size_t *retlen, const u_char *buf)
{
 if (to + len > mtd->size)
  return -EINVAL;

 memcpy((char *)mtd->priv + to, buf, len);

 *retlen = len;
 return 0;
}
