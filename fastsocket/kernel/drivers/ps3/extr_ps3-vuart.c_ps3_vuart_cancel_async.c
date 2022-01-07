
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ps3_system_bus_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ trigger; } ;
struct TYPE_5__ {TYPE_1__ work; } ;
struct TYPE_6__ {TYPE_2__ rx_list; } ;


 TYPE_3__* to_port_priv (struct ps3_system_bus_device*) ;

void ps3_vuart_cancel_async(struct ps3_system_bus_device *dev)
{
 to_port_priv(dev)->rx_list.work.trigger = 0;
}
