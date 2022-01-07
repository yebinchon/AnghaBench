
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {struct bbm_info* bbm; } ;
struct mtd_info {struct onenand_chip* priv; } ;
struct bbm_info {int (* isbad_bbt ) (struct mtd_info*,int ,int) ;} ;
typedef int loff_t ;


 int stub1 (struct mtd_info*,int ,int) ;

__attribute__((used)) static int onenand_block_isbad_nolock(struct mtd_info *mtd, loff_t ofs, int allowbbt)
{
 struct onenand_chip *this = mtd->priv;
 struct bbm_info *bbm = this->bbm;


 return bbm->isbad_bbt(mtd, ofs, allowbbt);
}
