
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {struct bbm_info* bbm; } ;
struct mtd_info {struct onenand_chip* priv; } ;
struct bbm_info {int * badblock_pattern; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct bbm_info* kzalloc (int,int ) ;
 int largepage_memorybased ;
 int onenand_scan_bbt (struct mtd_info*,int *) ;

int onenand_default_bbt(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 struct bbm_info *bbm;

 this->bbm = kzalloc(sizeof(struct bbm_info), GFP_KERNEL);
 if (!this->bbm)
  return -ENOMEM;

 bbm = this->bbm;


 if (!bbm->badblock_pattern)
  bbm->badblock_pattern = &largepage_memorybased;

 return onenand_scan_bbt(mtd, bbm->badblock_pattern);
}
