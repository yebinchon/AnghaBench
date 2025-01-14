
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_char ;
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ S3C2412_NFMECC0 ;
 int pr_debug (char*,unsigned long,unsigned long,unsigned long) ;
 unsigned long readl (scalar_t__) ;
 struct s3c2410_nand_info* s3c2410_nand_mtd_toinfo (struct mtd_info*) ;

__attribute__((used)) static int s3c2412_nand_calculate_ecc(struct mtd_info *mtd, const u_char *dat, u_char *ecc_code)
{
 struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);
 unsigned long ecc = readl(info->regs + S3C2412_NFMECC0);

 ecc_code[0] = ecc;
 ecc_code[1] = ecc >> 8;
 ecc_code[2] = ecc >> 16;

 pr_debug("calculate_ecc: returning ecc %02x,%02x,%02x\n", ecc_code[0], ecc_code[1], ecc_code[2]);

 return 0;
}
