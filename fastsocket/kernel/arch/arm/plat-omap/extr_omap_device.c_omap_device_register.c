
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct omap_device {TYPE_1__ pdev; } ;


 int platform_device_register (TYPE_1__*) ;
 int pr_debug (char*,int ) ;

int omap_device_register(struct omap_device *od)
{
 pr_debug("omap_device: %s: registering\n", od->pdev.name);

 return platform_device_register(&od->pdev);
}
