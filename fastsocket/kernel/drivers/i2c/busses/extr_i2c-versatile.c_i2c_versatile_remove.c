
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_versatile {int adap; } ;


 int i2c_del_adapter (int *) ;
 struct i2c_versatile* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int i2c_versatile_remove(struct platform_device *dev)
{
 struct i2c_versatile *i2c = platform_get_drvdata(dev);

 platform_set_drvdata(dev, ((void*)0));

 i2c_del_adapter(&i2c->adap);
 return 0;
}
