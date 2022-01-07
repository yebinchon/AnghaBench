
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isa_driver {int (* suspend ) (struct device*,int ,int ) ;} ;
struct device {struct isa_driver* platform_data; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int id; } ;


 int stub1 (struct device*,int ,int ) ;
 TYPE_1__* to_isa_dev (struct device*) ;

__attribute__((used)) static int isa_bus_suspend(struct device *dev, pm_message_t state)
{
 struct isa_driver *isa_driver = dev->platform_data;

 if (isa_driver->suspend)
  return isa_driver->suspend(dev, to_isa_dev(dev)->id, state);

 return 0;
}
