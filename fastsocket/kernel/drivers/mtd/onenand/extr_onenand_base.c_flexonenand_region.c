
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int numeraseregions; TYPE_1__* eraseregions; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ offset; } ;



int flexonenand_region(struct mtd_info *mtd, loff_t addr)
{
 int i;

 for (i = 0; i < mtd->numeraseregions; i++)
  if (addr < mtd->eraseregions[i].offset)
   break;
 return i - 1;
}
