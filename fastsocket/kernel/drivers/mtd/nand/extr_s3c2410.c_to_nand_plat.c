
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_platform_nand {int dummy; } ;
struct TYPE_2__ {struct s3c2410_platform_nand* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;



__attribute__((used)) static struct s3c2410_platform_nand *to_nand_plat(struct platform_device *dev)
{
 return dev->dev.platform_data;
}
