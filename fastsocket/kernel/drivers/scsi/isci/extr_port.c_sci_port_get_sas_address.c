
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sci_sas_address {scalar_t__ low; scalar_t__ high; } ;
struct isci_port {scalar_t__* phy_table; } ;


 size_t SCI_MAX_PHYS ;
 int sci_phy_get_sas_address (scalar_t__,struct sci_sas_address*) ;

void sci_port_get_sas_address(struct isci_port *iport, struct sci_sas_address *sas)
{
 u32 index;

 sas->high = 0;
 sas->low = 0;
 for (index = 0; index < SCI_MAX_PHYS; index++)
  if (iport->phy_table[index])
   sci_phy_get_sas_address(iport->phy_table[index], sas);
}
