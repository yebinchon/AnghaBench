
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct env {scalar_t__ regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ REG_STAT ;
 struct env* dev_get_drvdata (struct device*) ;
 int readb (scalar_t__) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_stat_bit(struct device *dev, struct device_attribute *attr, char *buf)
{
 int index = to_sensor_dev_attr(attr)->index;
 struct env *p = dev_get_drvdata(dev);
 u8 val;

 val = readb(p->regs + REG_STAT);
 return sprintf(buf, "%d\n", (val & (1 << index)) ? 1 : 0);
}
