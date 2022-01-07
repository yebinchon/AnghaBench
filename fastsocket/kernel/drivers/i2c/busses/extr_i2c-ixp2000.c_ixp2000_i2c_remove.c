
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ixp2000_i2c_data {int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct ixp2000_i2c_data*) ;
 struct ixp2000_i2c_data* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int ixp2000_i2c_remove(struct platform_device *plat_dev)
{
 struct ixp2000_i2c_data *drv_data = platform_get_drvdata(plat_dev);

 platform_set_drvdata(plat_dev, ((void*)0));

 i2c_del_adapter(&drv_data->adapter);

 kfree(drv_data);

 return 0;
}
