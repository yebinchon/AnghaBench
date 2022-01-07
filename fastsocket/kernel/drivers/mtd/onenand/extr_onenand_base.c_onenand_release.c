
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int options; struct bbm_info* oob_buf; struct bbm_info* page_buf; struct bbm_info* bbm; } ;
struct mtd_info {struct bbm_info* eraseregions; struct onenand_chip* priv; } ;
struct bbm_info {struct bbm_info* bbt; } ;


 int ONENAND_OOBBUF_ALLOC ;
 int ONENAND_PAGEBUF_ALLOC ;
 int del_mtd_device (struct mtd_info*) ;
 int del_mtd_partitions (struct mtd_info*) ;
 int kfree (struct bbm_info*) ;

void onenand_release(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;






 del_mtd_device (mtd);


 if (this->bbm) {
  struct bbm_info *bbm = this->bbm;
  kfree(bbm->bbt);
  kfree(this->bbm);
 }

 if (this->options & ONENAND_PAGEBUF_ALLOC)
  kfree(this->page_buf);
 if (this->options & ONENAND_OOBBUF_ALLOC)
  kfree(this->oob_buf);
 kfree(mtd->eraseregions);
}
