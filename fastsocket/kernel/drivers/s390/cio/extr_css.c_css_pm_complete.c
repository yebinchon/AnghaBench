
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct subchannel {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct css_driver {int (* complete ) (struct subchannel*) ;} ;


 int stub1 (struct subchannel*) ;
 struct css_driver* to_cssdriver (int ) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static void css_pm_complete(struct device *dev)
{
 struct subchannel *sch = to_subchannel(dev);
 struct css_driver *drv;

 if (!sch->dev.driver)
  return;
 drv = to_cssdriver(sch->dev.driver);
 if (drv->complete)
  drv->complete(sch);
}
