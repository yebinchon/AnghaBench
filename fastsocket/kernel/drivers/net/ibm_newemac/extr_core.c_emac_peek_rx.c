
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emac_instance {size_t rx_slot; TYPE_1__* rx_desc; } ;
struct TYPE_2__ {int ctrl; } ;


 int MAL_RX_CTRL_EMPTY ;

__attribute__((used)) static int emac_peek_rx(void *param)
{
 struct emac_instance *dev = param;

 return !(dev->rx_desc[dev->rx_slot].ctrl & MAL_RX_CTRL_EMPTY);
}
