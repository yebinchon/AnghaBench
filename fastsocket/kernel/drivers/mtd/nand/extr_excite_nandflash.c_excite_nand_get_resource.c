
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int id; } ;


 struct resource const* platform_get_resource_byname (struct platform_device*,unsigned long,char*) ;
 int snprintf (char*,int,char*,char const*,int) ;

__attribute__((used)) static inline const struct resource *
excite_nand_get_resource(struct platform_device *d, unsigned long flags,
    const char *basename)
{
 char buf[80];

 if (snprintf(buf, sizeof buf, "%s_%u", basename, d->id) >= sizeof buf)
  return ((void*)0);
 return platform_get_resource_byname(d, flags, buf);
}
