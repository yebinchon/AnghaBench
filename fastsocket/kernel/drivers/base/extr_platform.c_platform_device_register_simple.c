
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int ENOMEM ;
 struct platform_device* ERR_PTR (int) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_resources (struct platform_device*,struct resource*,unsigned int) ;
 struct platform_device* platform_device_alloc (char const*,int) ;
 int platform_device_put (struct platform_device*) ;

struct platform_device *platform_device_register_simple(const char *name,
       int id,
       struct resource *res,
       unsigned int num)
{
 struct platform_device *pdev;
 int retval;

 pdev = platform_device_alloc(name, id);
 if (!pdev) {
  retval = -ENOMEM;
  goto error;
 }

 if (num) {
  retval = platform_device_add_resources(pdev, res, num);
  if (retval)
   goto error;
 }

 retval = platform_device_add(pdev);
 if (retval)
  goto error;

 return pdev;

error:
 platform_device_put(pdev);
 return ERR_PTR(retval);
}
