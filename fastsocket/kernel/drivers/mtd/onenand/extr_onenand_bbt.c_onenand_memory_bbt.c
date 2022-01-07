
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int page_buf; } ;
struct nand_bbt_descr {int options; } ;
struct mtd_info {struct onenand_chip* priv; } ;


 int NAND_BBT_SCANEMPTY ;
 int create_bbt (struct mtd_info*,int ,struct nand_bbt_descr*,int) ;

__attribute__((used)) static inline int onenand_memory_bbt (struct mtd_info *mtd, struct nand_bbt_descr *bd)
{
 struct onenand_chip *this = mtd->priv;

        bd->options &= ~NAND_BBT_SCANEMPTY;
 return create_bbt(mtd, this->page_buf, bd, -1);
}
