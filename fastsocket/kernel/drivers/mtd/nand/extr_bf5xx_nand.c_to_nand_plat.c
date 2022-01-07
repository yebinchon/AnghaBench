
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bf5xx_nand_platform* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bf5xx_nand_platform {int dummy; } ;



__attribute__((used)) static struct bf5xx_nand_platform *to_nand_plat(struct platform_device *pdev)
{
 return pdev->dev.platform_data;
}
