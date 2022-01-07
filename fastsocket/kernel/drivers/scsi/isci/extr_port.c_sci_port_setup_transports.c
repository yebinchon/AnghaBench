
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct isci_port {int active_phy_mask; int * phy_table; } ;


 int SCI_MAX_PHYS ;
 int sci_phy_setup_transport (int ,int ) ;

void sci_port_setup_transports(struct isci_port *iport, u32 device_id)
{
 u8 index;

 for (index = 0; index < SCI_MAX_PHYS; index++) {
  if (iport->active_phy_mask & (1 << index))
   sci_phy_setup_transport(iport->phy_table[index], device_id);
 }
}
