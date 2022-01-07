
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int options; struct atmel_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct atmel_nand_host {int dev; int ecc; } ;


 unsigned int ATMEL_ECC_BITADDR ;
 unsigned int ATMEL_ECC_ECCERR ;
 unsigned int ATMEL_ECC_MULERR ;
 unsigned int ATMEL_ECC_RECERR ;
 int ATMEL_ECC_WORDADDR ;
 int EIO ;
 int NAND_BUSWIDTH_16 ;
 int PR ;
 int SR ;
 int dev_dbg (int ,char*,...) ;
 int ecc_readl (int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int atmel_nand_correct(struct mtd_info *mtd, u_char *dat,
  u_char *read_ecc, u_char *isnull)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct atmel_nand_host *host = nand_chip->priv;
 unsigned int ecc_status;
 unsigned int ecc_word, ecc_bit;


 ecc_status = ecc_readl(host->ecc, SR);


 if (likely(!(ecc_status & ATMEL_ECC_RECERR)))
  return 0;


 ecc_bit = ecc_readl(host->ecc, PR) & ATMEL_ECC_BITADDR;

 ecc_word = ecc_readl(host->ecc, PR) & ATMEL_ECC_WORDADDR;
 ecc_word >>= 4;


 if (ecc_status & ATMEL_ECC_MULERR) {


  if ((ecc_bit == ATMEL_ECC_BITADDR)
    && (ecc_word == (ATMEL_ECC_WORDADDR >> 4))) {

   return 0;
  }



  dev_dbg(host->dev, "atmel_nand : multiple errors detected."
    " Unable to correct.\n");
  return -EIO;
 }


 if (ecc_status & ATMEL_ECC_ECCERR) {



  dev_dbg(host->dev, "atmel_nand : one bit error on ECC code."
    " Nothing to correct\n");
  return 0;
 }

 dev_dbg(host->dev, "atmel_nand : one bit error on data."
   " (word offset in the page :"
   " 0x%x bit offset : 0x%x)\n",
   ecc_word, ecc_bit);

 if (nand_chip->options & NAND_BUSWIDTH_16) {

  ((unsigned short *) dat)[ecc_word] ^= (1 << ecc_bit);
 } else {

  dat[ecc_word] ^= (1 << ecc_bit);
 }
 dev_dbg(host->dev, "atmel_nand : error corrected\n");
 return 1;
}
