
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct agp_bridge_data {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* agp_enable ) (struct agp_bridge_data*,int ) ;} ;


 int stub1 (struct agp_bridge_data*,int ) ;

void agp_enable(struct agp_bridge_data *bridge, u32 mode)
{
 if (!bridge)
  return;
 bridge->driver->agp_enable(bridge, mode);
}
