
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int erase; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {int NumEraseRegions; int* EraseRegionInfo; } ;


 int cfi_amdstd_erase_chip ;

__attribute__((used)) static void fixup_use_erase_chip(struct mtd_info *mtd, void *param)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 if ((cfi->cfiq->NumEraseRegions == 1) &&
  ((cfi->cfiq->EraseRegionInfo[0] & 0xffff) == 0)) {
  mtd->erase = cfi_amdstd_erase_chip;
 }

}
