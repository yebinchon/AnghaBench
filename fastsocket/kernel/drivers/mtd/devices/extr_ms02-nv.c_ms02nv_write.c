
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {scalar_t__ size; struct ms02nv_private* priv; } ;
struct ms02nv_private {scalar_t__ uaddr; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int memcpy (scalar_t__,int const*,size_t) ;

__attribute__((used)) static int ms02nv_write(struct mtd_info *mtd, loff_t to,
   size_t len, size_t *retlen, const u_char *buf)
{
 struct ms02nv_private *mp = mtd->priv;

 if (to + len > mtd->size)
  return -EINVAL;

 memcpy(mp->uaddr + to, buf, len);
 *retlen = len;

 return 0;
}
