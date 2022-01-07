
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int st; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct subchannel *sch = to_subchannel(dev);

 return sprintf(buf, "%01x\n", sch->st);
}
