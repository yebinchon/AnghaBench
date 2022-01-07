
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 struct resource const* platform_get_resource_byname (struct platform_device*,unsigned int,char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static const struct resource *
iodev_get_resource(struct platform_device *pdv, const char *name,
       unsigned int type)
{
 char buf[80];
 if (snprintf(buf, sizeof buf, "%s_0", name) >= sizeof buf)
  return ((void*)0);
 return platform_get_resource_byname(pdv, type, buf);
}
