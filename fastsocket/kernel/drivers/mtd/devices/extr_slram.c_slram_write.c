
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mtd_info {scalar_t__ size; TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ start; } ;
typedef TYPE_1__ slram_priv_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int memcpy (scalar_t__,int const*,size_t) ;

__attribute__((used)) static int slram_write(struct mtd_info *mtd, loff_t to, size_t len,
  size_t *retlen, const u_char *buf)
{
 slram_priv_t *priv = mtd->priv;

 if (to + len > mtd->size)
  return -EINVAL;

 memcpy(priv->start + to, buf, len);

 *retlen = len;
 return(0);
}
