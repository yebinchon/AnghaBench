
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int tosakbd_scankeyboard (struct platform_device*) ;

__attribute__((used)) static void tosakbd_timer_callback(unsigned long __dev)
{
 struct platform_device *dev = (struct platform_device *)__dev;

 tosakbd_scankeyboard(dev);
}
