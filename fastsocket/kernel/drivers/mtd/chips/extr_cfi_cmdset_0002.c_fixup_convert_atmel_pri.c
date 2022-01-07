
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {scalar_t__ id; TYPE_1__* cfiq; struct cfi_pri_amdstd* cmdset_priv; } ;
struct cfi_pri_atmel {int Features; scalar_t__ BottomBoot; } ;
struct cfi_pri_amdstd {int EraseSuspend; int TopBottom; } ;
typedef int atmel_pri ;
struct TYPE_2__ {scalar_t__ BufWriteTimeoutMax; scalar_t__ BufWriteTimeoutTyp; } ;


 scalar_t__ AT49BV6416 ;
 int memcpy (struct cfi_pri_atmel*,struct cfi_pri_amdstd*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void fixup_convert_atmel_pri(struct mtd_info *mtd, void *param)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 struct cfi_pri_amdstd *extp = cfi->cmdset_priv;
 struct cfi_pri_atmel atmel_pri;

 memcpy(&atmel_pri, extp, sizeof(atmel_pri));
 memset((char *)extp + 5, 0, sizeof(*extp) - 5);

 if (atmel_pri.Features & 0x02)
  extp->EraseSuspend = 2;


 if (cfi->id == AT49BV6416) {
  if (atmel_pri.BottomBoot)
   extp->TopBottom = 3;
  else
   extp->TopBottom = 2;
 } else {
  if (atmel_pri.BottomBoot)
   extp->TopBottom = 2;
  else
   extp->TopBottom = 3;
 }


 cfi->cfiq->BufWriteTimeoutTyp = 0;
 cfi->cfiq->BufWriteTimeoutMax = 0;
}
