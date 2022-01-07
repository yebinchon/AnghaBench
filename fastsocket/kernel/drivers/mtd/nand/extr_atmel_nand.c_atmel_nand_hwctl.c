
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {struct atmel_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct atmel_nand_host {int ecc; } ;


 int ATMEL_ECC_RST ;
 int CR ;
 scalar_t__ cpu_is_at32ap7000 () ;
 int ecc_writel (int ,int ,int ) ;

__attribute__((used)) static void atmel_nand_hwctl(struct mtd_info *mtd, int mode)
{
 if (cpu_is_at32ap7000()) {
  struct nand_chip *nand_chip = mtd->priv;
  struct atmel_nand_host *host = nand_chip->priv;
  ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
 }
}
