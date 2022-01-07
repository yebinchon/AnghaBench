
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int pca_init (struct i2c_adapter*) ;

int i2c_pca_add_numbered_bus(struct i2c_adapter *adap)
{
 int rval;

 rval = pca_init(adap);
 if (rval)
  return rval;

 return i2c_add_numbered_adapter(adap);
}
