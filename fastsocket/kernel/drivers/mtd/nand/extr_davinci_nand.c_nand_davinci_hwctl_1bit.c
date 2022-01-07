
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtd_info {int dummy; } ;
struct davinci_nand_info {scalar_t__ core_chipsel; } ;


 int BIT (scalar_t__) ;
 int NANDFCR_OFFSET ;
 int davinci_nand_lock ;
 int davinci_nand_readl (struct davinci_nand_info*,int ) ;
 int davinci_nand_writel (struct davinci_nand_info*,int ,int ) ;
 int nand_davinci_readecc_1bit (struct mtd_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct davinci_nand_info* to_davinci_nand (struct mtd_info*) ;

__attribute__((used)) static void nand_davinci_hwctl_1bit(struct mtd_info *mtd, int mode)
{
 struct davinci_nand_info *info;
 uint32_t nandcfr;
 unsigned long flags;

 info = to_davinci_nand(mtd);


 nand_davinci_readecc_1bit(mtd);

 spin_lock_irqsave(&davinci_nand_lock, flags);


 nandcfr = davinci_nand_readl(info, NANDFCR_OFFSET);
 nandcfr |= BIT(8 + info->core_chipsel);
 davinci_nand_writel(info, NANDFCR_OFFSET, nandcfr);

 spin_unlock_irqrestore(&davinci_nand_lock, flags);
}
