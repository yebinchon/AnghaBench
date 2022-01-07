
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; int buffers; int bbt; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int NAND_OWN_BUFFERS ;
 int del_mtd_device (struct mtd_info*) ;
 int del_mtd_partitions (struct mtd_info*) ;
 int kfree (int ) ;

void nand_release(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;






 del_mtd_device(mtd);


 kfree(chip->bbt);
 if (!(chip->options & NAND_OWN_BUFFERS))
  kfree(chip->buffers);
}
