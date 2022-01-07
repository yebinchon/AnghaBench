
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {int* EraseRegionInfo; } ;



__attribute__((used)) static void fixup_st_m28w320cb(struct mtd_info *mtd, void* param)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;


 cfi->cfiq->EraseRegionInfo[1] =
  (cfi->cfiq->EraseRegionInfo[1] & 0xffff0000) | 0x3e;
}
