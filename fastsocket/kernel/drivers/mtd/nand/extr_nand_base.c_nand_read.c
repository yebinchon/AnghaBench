
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t len; size_t retlen; int * oobbuf; int * datbuf; } ;
struct nand_chip {TYPE_1__ ops; } ;
struct mtd_info {scalar_t__ size; struct nand_chip* priv; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int FL_READING ;
 int nand_do_read_ops (struct mtd_info*,scalar_t__,TYPE_1__*) ;
 int nand_get_device (struct nand_chip*,struct mtd_info*,int ) ;
 int nand_release_device (struct mtd_info*) ;

__attribute__((used)) static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
       size_t *retlen, uint8_t *buf)
{
 struct nand_chip *chip = mtd->priv;
 int ret;


 if ((from + len) > mtd->size)
  return -EINVAL;
 if (!len)
  return 0;

 nand_get_device(chip, mtd, FL_READING);

 chip->ops.len = len;
 chip->ops.datbuf = buf;
 chip->ops.oobbuf = ((void*)0);

 ret = nand_do_read_ops(mtd, from, &chip->ops);

 *retlen = chip->ops.retlen;

 nand_release_device(mtd);

 return ret;
}
