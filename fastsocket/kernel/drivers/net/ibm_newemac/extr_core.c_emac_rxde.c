
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_stopped; } ;
struct emac_instance {TYPE_1__ estats; } ;


 int emac_rx_disable_async (struct emac_instance*) ;

__attribute__((used)) static void emac_rxde(void *param)
{
 struct emac_instance *dev = param;

 ++dev->estats.rx_stopped;
 emac_rx_disable_async(dev);
}
