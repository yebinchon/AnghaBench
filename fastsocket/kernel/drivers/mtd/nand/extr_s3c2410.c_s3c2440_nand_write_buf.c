
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ S3C2440_NFDATA ;
 struct s3c2410_nand_info* s3c2410_nand_mtd_toinfo (struct mtd_info*) ;
 int writeb (int const,scalar_t__) ;
 int writesl (scalar_t__,int const*,int) ;

__attribute__((used)) static void s3c2440_nand_write_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);

 writesl(info->regs + S3C2440_NFDATA, buf, len >> 2);


 if (len & 3) {
  buf += len & ~3;

  for (; len & 3; len--, buf++)
   writeb(*buf, info->regs + S3C2440_NFDATA);
 }
}
