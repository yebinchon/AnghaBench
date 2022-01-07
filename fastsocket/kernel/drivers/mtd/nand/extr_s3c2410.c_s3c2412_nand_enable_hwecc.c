
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {scalar_t__ regs; } ;
struct mtd_info {int dummy; } ;


 unsigned long S3C2412_NFCONT_INIT_MAIN_ECC ;
 scalar_t__ S3C2440_NFCONT ;
 unsigned long readl (scalar_t__) ;
 struct s3c2410_nand_info* s3c2410_nand_mtd_toinfo (struct mtd_info*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void s3c2412_nand_enable_hwecc(struct mtd_info *mtd, int mode)
{
 struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);
 unsigned long ctrl;

 ctrl = readl(info->regs + S3C2440_NFCONT);
 writel(ctrl | S3C2412_NFCONT_INIT_MAIN_ECC, info->regs + S3C2440_NFCONT);
}
