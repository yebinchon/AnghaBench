
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sci_sas_address {void* low; void* high; } ;
struct isci_phy {TYPE_1__* link_layer_registers; } ;
struct TYPE_2__ {int source_sas_address_low; int source_sas_address_high; } ;


 void* readl (int *) ;

void sci_phy_get_sas_address(struct isci_phy *iphy, struct sci_sas_address *sas)
{
 sas->high = readl(&iphy->link_layer_registers->source_sas_address_high);
 sas->low = readl(&iphy->link_layer_registers->source_sas_address_low);
}
