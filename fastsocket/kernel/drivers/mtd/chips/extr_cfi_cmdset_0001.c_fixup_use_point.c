
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int unpoint; scalar_t__ point; struct map_info* priv; } ;
struct map_info {int dummy; } ;


 scalar_t__ cfi_intelext_point ;
 int cfi_intelext_unpoint ;
 scalar_t__ map_is_linear (struct map_info*) ;

__attribute__((used)) static void fixup_use_point(struct mtd_info *mtd, void *param)
{
 struct map_info *map = mtd->priv;
 if (!mtd->point && map_is_linear(map)) {
  mtd->point = cfi_intelext_point;
  mtd->unpoint = cfi_intelext_unpoint;
 }
}
