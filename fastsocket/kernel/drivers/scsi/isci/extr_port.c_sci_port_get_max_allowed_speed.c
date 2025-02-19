
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct isci_port {struct isci_phy** phy_table; } ;
struct isci_phy {int max_negotiated_speed; } ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;


 int SAS_LINK_RATE_6_0_GBPS ;
 size_t SCI_MAX_PHYS ;
 scalar_t__ sci_port_active_phy (struct isci_port*,struct isci_phy*) ;

enum sas_linkrate sci_port_get_max_allowed_speed(struct isci_port *iport)
{
 u16 index;
 struct isci_phy *iphy;
 enum sas_linkrate max_allowed_speed = SAS_LINK_RATE_6_0_GBPS;




 for (index = 0; index < SCI_MAX_PHYS; index++) {
  iphy = iport->phy_table[index];
  if (iphy && sci_port_active_phy(iport, iphy) &&
      iphy->max_negotiated_speed < max_allowed_speed)
   max_allowed_speed = iphy->max_negotiated_speed;
 }

 return max_allowed_speed;
}
