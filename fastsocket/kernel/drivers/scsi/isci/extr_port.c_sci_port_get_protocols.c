
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sci_phy_proto {scalar_t__ all; } ;
struct isci_port {struct isci_phy** phy_table; } ;
struct isci_phy {int dummy; } ;


 size_t SCI_MAX_PHYS ;
 int sci_phy_get_protocols (struct isci_phy*,struct sci_phy_proto*) ;

__attribute__((used)) static void sci_port_get_protocols(struct isci_port *iport, struct sci_phy_proto *proto)
{
 u8 index;

 proto->all = 0;
 for (index = 0; index < SCI_MAX_PHYS; index++) {
  struct isci_phy *iphy = iport->phy_table[index];

  if (!iphy)
   continue;
  sci_phy_get_protocols(iphy, proto);
 }
}
