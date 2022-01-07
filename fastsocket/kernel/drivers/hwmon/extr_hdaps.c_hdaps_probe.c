
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int hdaps_device_init () ;
 int pr_info (char*) ;

__attribute__((used)) static int hdaps_probe(struct platform_device *dev)
{
 int ret;

 ret = hdaps_device_init();
 if (ret)
  return ret;

 pr_info("device successfully initialized\n");
 return 0;
}
