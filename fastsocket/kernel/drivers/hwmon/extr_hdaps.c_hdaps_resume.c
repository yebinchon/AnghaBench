
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int hdaps_device_init () ;

__attribute__((used)) static int hdaps_resume(struct platform_device *dev)
{
 return hdaps_device_init();
}
