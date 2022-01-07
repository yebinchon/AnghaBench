
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;
struct platform_device {int dummy; } ;


 int mainstone_mach_ops ;
 struct wm97xx* platform_get_drvdata (struct platform_device*) ;
 int wm97xx_register_mach_ops (struct wm97xx*,int *) ;

__attribute__((used)) static int mainstone_wm97xx_probe(struct platform_device *pdev)
{
 struct wm97xx *wm = platform_get_drvdata(pdev);

 return wm97xx_register_mach_ops(wm, &mainstone_mach_ops);
}
