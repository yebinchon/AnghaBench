
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_concat* eraseregions; scalar_t__ numeraseregions; } ;
struct mtd_concat {TYPE_1__ mtd; } ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int kfree (struct mtd_concat*) ;

void mtd_concat_destroy(struct mtd_info *mtd)
{
 struct mtd_concat *concat = CONCAT(mtd);
 if (concat->mtd.numeraseregions)
  kfree(concat->mtd.eraseregions);
 kfree(concat);
}
