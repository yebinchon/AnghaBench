
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3c2410_nand_mtd {TYPE_2__* set; struct s3c2410_nand_info* info; } ;
struct s3c2410_nand_info {unsigned long sel_bit; int clk; int sel_reg; TYPE_1__* platform; int device; } ;
struct nand_chip {struct s3c2410_nand_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_4__ {int nr_chips; } ;
struct TYPE_3__ {int (* select_chip ) (TYPE_2__*,int) ;} ;


 scalar_t__ allow_clk_stop (struct s3c2410_nand_info*) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*,int) ;
 unsigned long readl (int ) ;
 int stub1 (TYPE_2__*,int) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void s3c2410_nand_select_chip(struct mtd_info *mtd, int chip)
{
 struct s3c2410_nand_info *info;
 struct s3c2410_nand_mtd *nmtd;
 struct nand_chip *this = mtd->priv;
 unsigned long cur;

 nmtd = this->priv;
 info = nmtd->info;

 if (chip != -1 && allow_clk_stop(info))
  clk_enable(info->clk);

 cur = readl(info->sel_reg);

 if (chip == -1) {
  cur |= info->sel_bit;
 } else {
  if (nmtd->set != ((void*)0) && chip > nmtd->set->nr_chips) {
   dev_err(info->device, "invalid chip %d\n", chip);
   return;
  }

  if (info->platform != ((void*)0)) {
   if (info->platform->select_chip != ((void*)0))
    (info->platform->select_chip) (nmtd->set, chip);
  }

  cur &= ~info->sel_bit;
 }

 writel(cur, info->sel_reg);

 if (chip == -1 && allow_clk_stop(info))
  clk_disable(info->clk);
}
