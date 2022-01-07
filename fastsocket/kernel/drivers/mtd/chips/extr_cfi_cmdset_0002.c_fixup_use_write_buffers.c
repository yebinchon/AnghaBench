
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int write; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {scalar_t__ BufWriteTimeoutTyp; } ;


 int DEBUG (int ,char*) ;
 int MTD_DEBUG_LEVEL1 ;
 int cfi_amdstd_write_buffers ;

__attribute__((used)) static void fixup_use_write_buffers(struct mtd_info *mtd, void *param)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 if (cfi->cfiq->BufWriteTimeoutTyp) {
  DEBUG(MTD_DEBUG_LEVEL1, "Using buffer write method\n" );
  mtd->write = cfi_amdstd_write_buffers;
 }
}
