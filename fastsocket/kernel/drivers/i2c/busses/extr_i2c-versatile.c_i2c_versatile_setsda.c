
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_versatile {scalar_t__ base; } ;


 scalar_t__ I2C_CONTROLC ;
 scalar_t__ I2C_CONTROLS ;
 int SDA ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void i2c_versatile_setsda(void *data, int state)
{
 struct i2c_versatile *i2c = data;

 writel(SDA, i2c->base + (state ? I2C_CONTROLS : I2C_CONTROLC));
}
