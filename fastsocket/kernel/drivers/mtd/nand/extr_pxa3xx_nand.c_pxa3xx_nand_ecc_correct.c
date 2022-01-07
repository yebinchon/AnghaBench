
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pxa3xx_nand_info {scalar_t__ retcode; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;


 scalar_t__ ERR_NONE ;
 scalar_t__ ERR_SBERR ;

__attribute__((used)) static int pxa3xx_nand_ecc_correct(struct mtd_info *mtd,
  uint8_t *dat, uint8_t *read_ecc, uint8_t *calc_ecc)
{
 struct pxa3xx_nand_info *info = mtd->priv;
 if (info->retcode == ERR_SBERR)
  return 1;
 else if (info->retcode != ERR_NONE)
  return -1;

 return 0;
}
