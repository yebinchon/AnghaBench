
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {scalar_t__ size; TYPE_1__* priv; } ;
struct TYPE_2__ {void* start; } ;
typedef TYPE_1__ slram_priv_t ;
typedef int resource_size_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;

__attribute__((used)) static int slram_point(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, void **virt, resource_size_t *phys)
{
 slram_priv_t *priv = mtd->priv;


 if (phys)
  return -EINVAL;

 if (from + len > mtd->size)
  return -EINVAL;

 *virt = priv->start + from;
 *retlen = len;
 return(0);
}
