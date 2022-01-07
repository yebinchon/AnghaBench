
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* varsize_frob_t ) (struct map_info*,int *,unsigned long,int,void*) ;
struct mtd_info {size_t size; int numeraseregions; struct mtd_erase_region_info* eraseregions; struct map_info* priv; } ;
struct mtd_erase_region_info {size_t offset; int erasesize; int numblocks; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {size_t chipshift; int numchips; int * chips; } ;
typedef size_t loff_t ;


 int EINVAL ;
 int stub1 (struct map_info*,int *,unsigned long,int,void*) ;

int cfi_varsize_frob(struct mtd_info *mtd, varsize_frob_t frob,
         loff_t ofs, size_t len, void *thunk)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 unsigned long adr;
 int chipnum, ret = 0;
 int i, first;
 struct mtd_erase_region_info *regions = mtd->eraseregions;

 if (ofs > mtd->size)
  return -EINVAL;

 if ((len + ofs) > mtd->size)
  return -EINVAL;





 i = 0;







 while (i < mtd->numeraseregions && ofs >= regions[i].offset)
        i++;
 i--;







 if (ofs & (regions[i].erasesize-1))
  return -EINVAL;


 first = i;





 while (i<mtd->numeraseregions && (ofs + len) >= regions[i].offset)
  i++;




 i--;

 if ((ofs + len) & (regions[i].erasesize-1))
  return -EINVAL;

 chipnum = ofs >> cfi->chipshift;
 adr = ofs - (chipnum << cfi->chipshift);

 i=first;

 while(len) {
  int size = regions[i].erasesize;

  ret = (*frob)(map, &cfi->chips[chipnum], adr, size, thunk);

  if (ret)
   return ret;

  adr += size;
  ofs += size;
  len -= size;

  if (ofs == regions[i].offset + size * regions[i].numblocks)
   i++;

  if (adr >> cfi->chipshift) {
   adr = 0;
   chipnum++;

   if (chipnum >= cfi->numchips)
   break;
  }
 }

 return 0;
}
