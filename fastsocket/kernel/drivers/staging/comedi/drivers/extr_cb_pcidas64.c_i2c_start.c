
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int i2c_set_scl (struct comedi_device*,int) ;
 int i2c_set_sda (struct comedi_device*,int) ;

__attribute__((used)) static void i2c_start(struct comedi_device *dev)
{
 i2c_set_scl(dev, 1);
 i2c_set_sda(dev, 1);
 i2c_set_sda(dev, 0);
}
