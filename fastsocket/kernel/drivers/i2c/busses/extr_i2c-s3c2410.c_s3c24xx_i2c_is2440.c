
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_i2c {int dev; } ;
struct platform_device {int dummy; } ;
typedef enum s3c24xx_i2c_type { ____Placeholder_s3c24xx_i2c_type } s3c24xx_i2c_type ;
struct TYPE_2__ {int driver_data; } ;


 int TYPE_S3C2440 ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static inline int s3c24xx_i2c_is2440(struct s3c24xx_i2c *i2c)
{
 struct platform_device *pdev = to_platform_device(i2c->dev);
 enum s3c24xx_i2c_type type;

 type = platform_get_device_id(pdev)->driver_data;
 return type == TYPE_S3C2440;
}
