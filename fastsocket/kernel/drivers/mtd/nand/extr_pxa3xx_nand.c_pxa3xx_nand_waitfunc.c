
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_nand_info {scalar_t__ retcode; } ;
struct nand_chip {scalar_t__ state; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;


 scalar_t__ ERR_NONE ;
 scalar_t__ FL_ERASING ;
 scalar_t__ FL_WRITING ;

__attribute__((used)) static int pxa3xx_nand_waitfunc(struct mtd_info *mtd, struct nand_chip *this)
{
 struct pxa3xx_nand_info *info = mtd->priv;


 if (this->state == FL_WRITING || this->state == FL_ERASING) {
  if (info->retcode == ERR_NONE)
   return 0;
  else {




   return 0x01;
  }
 }

 return 0;
}
