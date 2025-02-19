
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {size_t size; struct map_info* priv; } ;
struct map_info {scalar_t__ phys; void* virt; struct cfi_private* fldrv_priv; } ;
struct cfi_private {size_t chipshift; int numchips; TYPE_1__* chips; } ;
typedef scalar_t__ resource_size_t ;
typedef size_t loff_t ;
struct TYPE_2__ {long start; } ;


 int EINVAL ;
 int do_point_onechip (struct map_info*,TYPE_1__*,unsigned long,unsigned long) ;

__attribute__((used)) static int cfi_intelext_point(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, void **virt, resource_size_t *phys)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 unsigned long ofs, last_end = 0;
 int chipnum;
 int ret = 0;

 if (!map->virt || (from + len > mtd->size))
  return -EINVAL;




 chipnum = (from >> cfi->chipshift);
 ofs = from - (chipnum << cfi->chipshift);

 *virt = map->virt + cfi->chips[chipnum].start + ofs;
 *retlen = 0;
 if (phys)
  *phys = map->phys + cfi->chips[chipnum].start + ofs;

 while (len) {
  unsigned long thislen;

  if (chipnum >= cfi->numchips)
   break;


  if (!last_end)
   last_end = cfi->chips[chipnum].start;
  else if (cfi->chips[chipnum].start != last_end)
   break;

  if ((len + ofs -1) >> cfi->chipshift)
   thislen = (1<<cfi->chipshift) - ofs;
  else
   thislen = len;

  ret = do_point_onechip(map, &cfi->chips[chipnum], ofs, thislen);
  if (ret)
   break;

  *retlen += thislen;
  len -= thislen;

  ofs = 0;
  last_end += 1 << cfi->chipshift;
  chipnum++;
 }
 return 0;
}
