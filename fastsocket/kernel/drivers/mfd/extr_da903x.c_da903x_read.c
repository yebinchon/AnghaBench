
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;


 int __da903x_read (int ,int,int *) ;
 int to_i2c_client (struct device*) ;

int da903x_read(struct device *dev, int reg, uint8_t *val)
{
 return __da903x_read(to_i2c_client(dev), reg, val);
}
