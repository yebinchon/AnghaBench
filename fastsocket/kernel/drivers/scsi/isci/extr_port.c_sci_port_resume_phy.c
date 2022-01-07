
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {int enabled_phy_mask; } ;
struct isci_phy {int phy_index; } ;


 int sci_phy_resume (struct isci_phy*) ;

__attribute__((used)) static void sci_port_resume_phy(struct isci_port *iport, struct isci_phy *iphy)
{
 sci_phy_resume(iphy);
 iport->enabled_phy_mask |= 1 << iphy->phy_index;
}
