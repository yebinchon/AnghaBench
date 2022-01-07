
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_set {int dummy; } ;
struct s3c2410_nand_mtd {int mtd; } ;
struct s3c2410_nand_info {int dummy; } ;


 int add_mtd_device (int *) ;

__attribute__((used)) static int s3c2410_nand_add_partition(struct s3c2410_nand_info *info,
          struct s3c2410_nand_mtd *mtd,
          struct s3c2410_nand_set *set)
{
 return add_mtd_device(&mtd->mtd);
}
