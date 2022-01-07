
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sci_sas_address {int dummy; } ;
struct sci_port_configuration_agent {TYPE_1__* phy_valid_port_range; } ;
struct isci_host {int * phys; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {size_t min_index; size_t max_index; } ;


 size_t SCI_MAX_PHYS ;
 int sci_phy_get_sas_address (int *,struct sci_sas_address*) ;
 int sci_port_configuration_agent_validate_ports (struct isci_host*,struct sci_port_configuration_agent*) ;
 scalar_t__ sci_sas_address_compare (struct sci_sas_address,struct sci_sas_address) ;

__attribute__((used)) static enum sci_status
sci_apc_agent_validate_phy_configuration(struct isci_host *ihost,
           struct sci_port_configuration_agent *port_agent)
{
 u8 phy_index;
 u8 port_index;
 struct sci_sas_address sas_address;
 struct sci_sas_address phy_assigned_address;

 phy_index = 0;

 while (phy_index < SCI_MAX_PHYS) {
  port_index = phy_index;


  sci_phy_get_sas_address(&ihost->phys[phy_index],
         &sas_address);

  while (++phy_index < SCI_MAX_PHYS) {
   sci_phy_get_sas_address(&ihost->phys[phy_index],
           &phy_assigned_address);


   if (sci_sas_address_compare(sas_address, phy_assigned_address) == 0) {
    port_agent->phy_valid_port_range[phy_index].min_index = port_index;
    port_agent->phy_valid_port_range[phy_index].max_index = phy_index;
   } else {
    port_agent->phy_valid_port_range[phy_index].min_index = phy_index;
    port_agent->phy_valid_port_range[phy_index].max_index = phy_index;
    break;
   }
  }
 }

 return sci_port_configuration_agent_validate_ports(ihost, port_agent);
}
