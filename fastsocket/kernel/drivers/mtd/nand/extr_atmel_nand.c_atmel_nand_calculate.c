
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_4__ {TYPE_1__* layout; } ;
struct nand_chip {TYPE_2__ ecc; struct atmel_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct atmel_nand_host {int ecc; } ;
struct TYPE_3__ {int * eccpos; } ;


 unsigned int ATMEL_ECC_NPARITY ;
 int NPR ;
 int PR ;
 unsigned int ecc_readl (int ,int ) ;

__attribute__((used)) static int atmel_nand_calculate(struct mtd_info *mtd,
  const u_char *dat, unsigned char *ecc_code)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct atmel_nand_host *host = nand_chip->priv;
 uint32_t *eccpos = nand_chip->ecc.layout->eccpos;
 unsigned int ecc_value;


 ecc_value = ecc_readl(host->ecc, PR);

 ecc_code[0] = ecc_value & 0xFF;
 ecc_code[1] = (ecc_value >> 8) & 0xFF;


 ecc_value = ecc_readl(host->ecc, NPR) & ATMEL_ECC_NPARITY;

 ecc_code[2] = ecc_value & 0xFF;
 ecc_code[3] = (ecc_value >> 8) & 0xFF;

 return 0;
}
