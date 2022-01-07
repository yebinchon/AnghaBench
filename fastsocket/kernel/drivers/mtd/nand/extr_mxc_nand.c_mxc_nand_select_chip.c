
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {struct mxc_nand_host* priv; } ;
struct mxc_nand_host {int clk_act; int clk; scalar_t__ regs; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int DEBUG (int ,char*,int) ;
 int MTD_DEBUG_LEVEL0 ;
 int NFC_CE ;
 scalar_t__ NFC_CONFIG1 ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void mxc_nand_select_chip(struct mtd_info *mtd, int chip)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct mxc_nand_host *host = nand_chip->priv;
 switch (chip) {
 case -1:

  if (host->clk_act) {
   clk_disable(host->clk);
   host->clk_act = 0;
  }
  break;
 case 0:

  if (!host->clk_act) {
   clk_enable(host->clk);
   host->clk_act = 1;
  }
  break;

 default:
  break;
 }
}
