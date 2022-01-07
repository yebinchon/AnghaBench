
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_versatile {scalar_t__ base; } ;


 scalar_t__ I2C_CONTROL ;
 int SCL ;
 int readl (scalar_t__) ;

__attribute__((used)) static int i2c_versatile_getscl(void *data)
{
 struct i2c_versatile *i2c = data;
 return !!(readl(i2c->base + I2C_CONTROL) & SCL);
}
