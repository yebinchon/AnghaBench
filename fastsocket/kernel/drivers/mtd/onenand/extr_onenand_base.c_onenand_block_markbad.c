
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int (* block_markbad ) (struct mtd_info*,int ) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;


 int FL_WRITING ;
 int onenand_block_isbad (struct mtd_info*,int ) ;
 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_release_device (struct mtd_info*) ;
 int stub1 (struct mtd_info*,int ) ;

__attribute__((used)) static int onenand_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 struct onenand_chip *this = mtd->priv;
 int ret;

 ret = onenand_block_isbad(mtd, ofs);
 if (ret) {

  if (ret > 0)
   return 0;
  return ret;
 }

 onenand_get_device(mtd, FL_WRITING);
 ret = this->block_markbad(mtd, ofs);
 onenand_release_device(mtd);
 return ret;
}
