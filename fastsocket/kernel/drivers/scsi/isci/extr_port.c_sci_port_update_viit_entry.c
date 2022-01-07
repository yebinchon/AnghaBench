
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sci_sas_address {int high; int low; } ;
struct isci_port {int physical_port_index; TYPE_1__* viit_registers; } ;
struct TYPE_2__ {int status; int reserved; int initiator_sas_address_lo; int initiator_sas_address_hi; } ;


 int SCU_VIIT_ENTRY_ID_VIIT ;
 int SCU_VIIT_ENTRY_LPVIE_SHIFT ;
 int SCU_VIIT_IPPT_INITIATOR ;
 int SCU_VIIT_STATUS_ALL_VALID ;
 int sci_port_get_sas_address (struct isci_port*,struct sci_sas_address*) ;
 int writel (int,int *) ;

__attribute__((used)) static void sci_port_update_viit_entry(struct isci_port *iport)
{
 struct sci_sas_address sas_address;

 sci_port_get_sas_address(iport, &sas_address);

 writel(sas_address.high,
  &iport->viit_registers->initiator_sas_address_hi);
 writel(sas_address.low,
  &iport->viit_registers->initiator_sas_address_lo);


 writel(0, &iport->viit_registers->reserved);


 writel(SCU_VIIT_ENTRY_ID_VIIT |
        SCU_VIIT_IPPT_INITIATOR |
        ((1 << iport->physical_port_index) << SCU_VIIT_ENTRY_LPVIE_SHIFT) |
        SCU_VIIT_STATUS_ALL_VALID,
        &iport->viit_registers->status);
}
