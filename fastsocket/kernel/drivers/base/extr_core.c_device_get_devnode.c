
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_2__* class; TYPE_1__* type; } ;
typedef int mode_t ;
struct TYPE_4__ {char* (* devnode ) (struct device*,int *) ;} ;
struct TYPE_3__ {char* (* devnode ) (struct device*,int *) ;} ;


 int GFP_KERNEL ;
 char const* dev_name (struct device*) ;
 char* kstrdup (char const*,int ) ;
 char* strchr (char const*,char) ;
 char* stub1 (struct device*,int *) ;
 char* stub2 (struct device*,int *) ;

const char *device_get_devnode(struct device *dev,
          mode_t *mode, const char **tmp)
{
 char *s;

 *tmp = ((void*)0);


 if (dev->type && dev->type->devnode)
  *tmp = dev->type->devnode(dev, mode);
 if (*tmp)
  return *tmp;


 if (dev->class && dev->class->devnode)
  *tmp = dev->class->devnode(dev, mode);
 if (*tmp)
  return *tmp;


 if (strchr(dev_name(dev), '!') == ((void*)0))
  return dev_name(dev);


 *tmp = kstrdup(dev_name(dev), GFP_KERNEL);
 if (!*tmp)
  return ((void*)0);
 while ((s = strchr(*tmp, '!')))
  s[0] = '/';
 return *tmp;
}
