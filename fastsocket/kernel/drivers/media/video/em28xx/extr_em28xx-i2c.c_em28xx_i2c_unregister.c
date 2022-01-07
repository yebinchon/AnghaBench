
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int i2c_adap; } ;


 int i2c_del_adapter (int *) ;

int em28xx_i2c_unregister(struct em28xx *dev)
{
 i2c_del_adapter(&dev->i2c_adap);
 return 0;
}
