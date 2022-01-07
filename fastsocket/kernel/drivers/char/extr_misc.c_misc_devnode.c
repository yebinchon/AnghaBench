
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miscdevice {scalar_t__ nodename; scalar_t__ mode; } ;
struct device {int dummy; } ;
typedef scalar_t__ mode_t ;


 int GFP_KERNEL ;
 struct miscdevice* dev_get_drvdata (struct device*) ;
 char* kstrdup (scalar_t__,int ) ;

__attribute__((used)) static char *misc_devnode(struct device *dev, mode_t *mode)
{
 struct miscdevice *c = dev_get_drvdata(dev);

 if (mode && c->mode)
  *mode = c->mode;
 if (c->nodename)
  return kstrdup(c->nodename, GFP_KERNEL);
 return ((void*)0);
}
