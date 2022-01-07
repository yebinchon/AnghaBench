
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {TYPE_1__* driver; } ;
struct device {int driver; } ;
struct TYPE_2__ {int (* probe ) (struct subchannel*) ;} ;


 int stub1 (struct subchannel*) ;
 TYPE_1__* to_cssdriver (int ) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int css_probe(struct device *dev)
{
 struct subchannel *sch;
 int ret;

 sch = to_subchannel(dev);
 sch->driver = to_cssdriver(dev->driver);
 ret = sch->driver->probe ? sch->driver->probe(sch) : 0;
 if (ret)
  sch->driver = ((void*)0);
 return ret;
}
