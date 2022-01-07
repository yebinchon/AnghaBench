
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bf5xx_nand_info {int dummy; } ;


 struct bf5xx_nand_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct bf5xx_nand_info *to_nand_info(struct platform_device *pdev)
{
 return platform_get_drvdata(pdev);
}
