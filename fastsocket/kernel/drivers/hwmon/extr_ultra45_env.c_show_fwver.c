
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct env {scalar_t__ regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ REG_STAT ;
 struct env* dev_get_drvdata (struct device*) ;
 int readb (scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_fwver(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct env *p = dev_get_drvdata(dev);
 u8 val;

 val = readb(p->regs + REG_STAT);
 return sprintf(buf, "%d\n", val >> 4);
}
