
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {int dummy; } ;
struct platform_device {int dummy; } ;


 struct s3c2410_nand_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct s3c2410_nand_info *to_nand_info(struct platform_device *dev)
{
 return platform_get_drvdata(dev);
}
