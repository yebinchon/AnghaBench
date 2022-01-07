
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ priv; } ;



__attribute__((used)) static unsigned long ram_get_unmapped_area(struct mtd_info *mtd,
        unsigned long len,
        unsigned long offset,
        unsigned long flags)
{
 return (unsigned long) mtd->priv + offset;
}
