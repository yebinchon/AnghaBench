
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int writesize; } ;
struct mtd_info {int oobsize; struct onenand_chip* priv; } ;


 scalar_t__ ONENAND_CURRENT_BUFFERRAM (struct onenand_chip*) ;
 int ONENAND_DATARAM ;
 int ONENAND_SPARERAM ;

__attribute__((used)) static inline int omap2_onenand_bufferram_offset(struct mtd_info *mtd, int area)
{
 struct onenand_chip *this = mtd->priv;

 if (ONENAND_CURRENT_BUFFERRAM(this)) {
  if (area == ONENAND_DATARAM)
   return this->writesize;
  if (area == ONENAND_SPARERAM)
   return mtd->oobsize;
 }

 return 0;
}
