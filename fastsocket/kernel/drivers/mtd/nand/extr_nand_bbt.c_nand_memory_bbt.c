
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {TYPE_1__* buffers; } ;
struct nand_bbt_descr {int options; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_2__ {int databuf; } ;


 int NAND_BBT_SCANEMPTY ;
 int create_bbt (struct mtd_info*,int ,struct nand_bbt_descr*,int) ;

__attribute__((used)) static inline int nand_memory_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
{
 struct nand_chip *this = mtd->priv;

 bd->options &= ~NAND_BBT_SCANEMPTY;
 return create_bbt(mtd, this->buffers->databuf, bd, -1);
}
