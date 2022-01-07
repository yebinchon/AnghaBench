
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {scalar_t__ priv; } ;


 int __nand_correct_data (unsigned char*,unsigned char*,unsigned char*,int ) ;

int nand_correct_data(struct mtd_info *mtd, unsigned char *buf,
        unsigned char *read_ecc, unsigned char *calc_ecc)
{
 return __nand_correct_data(buf, read_ecc, calc_ecc,
       ((struct nand_chip *)mtd->priv)->ecc.size);
}
