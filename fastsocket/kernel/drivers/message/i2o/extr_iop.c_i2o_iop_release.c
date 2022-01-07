
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_controller {int dummy; } ;
struct device {int dummy; } ;


 int i2o_iop_free (struct i2o_controller*) ;
 struct i2o_controller* to_i2o_controller (struct device*) ;

__attribute__((used)) static void i2o_iop_release(struct device *dev)
{
 struct i2o_controller *c = to_i2o_controller(dev);

 i2o_iop_free(c);
}
