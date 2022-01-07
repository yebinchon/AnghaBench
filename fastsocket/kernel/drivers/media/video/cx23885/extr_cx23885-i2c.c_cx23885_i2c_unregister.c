
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_i2c {int i2c_adap; } ;


 int i2c_del_adapter (int *) ;

int cx23885_i2c_unregister(struct cx23885_i2c *bus)
{
 i2c_del_adapter(&bus->i2c_adap);
 return 0;
}
