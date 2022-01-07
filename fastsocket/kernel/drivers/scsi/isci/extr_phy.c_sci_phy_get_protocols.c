
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sci_phy_proto {int all; } ;
struct isci_phy {TYPE_1__* link_layer_registers; } ;
struct TYPE_2__ {int transmit_identification; } ;


 int readl (int *) ;

void sci_phy_get_protocols(struct isci_phy *iphy, struct sci_phy_proto *proto)
{
 proto->all = readl(&iphy->link_layer_registers->transmit_identification);
}
