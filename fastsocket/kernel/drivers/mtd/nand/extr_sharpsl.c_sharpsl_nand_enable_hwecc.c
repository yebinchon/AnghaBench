
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharpsl_nand {scalar_t__ io; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ ECCCLRR ;
 struct sharpsl_nand* mtd_to_sharpsl (struct mtd_info*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sharpsl_nand_enable_hwecc(struct mtd_info *mtd, int mode)
{
 struct sharpsl_nand *sharpsl = mtd_to_sharpsl(mtd);
 writeb(0, sharpsl->io + ECCCLRR);
}
