
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sas_address; } ;
struct TYPE_4__ {int protocols; int sas_address; } ;
struct sci_port_properties {scalar_t__ index; TYPE_1__ remote; TYPE_2__ local; int phy_mask; } ;
struct isci_port {scalar_t__ logical_port_index; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 scalar_t__ SCIC_SDS_DUMMY_PORT ;
 int SCI_FAILURE_INVALID_PORT ;
 int SCI_SUCCESS ;
 int sci_port_get_attached_sas_address (struct isci_port*,int *) ;
 int sci_port_get_phys (struct isci_port*) ;
 int sci_port_get_protocols (struct isci_port*,int *) ;
 int sci_port_get_sas_address (struct isci_port*,int *) ;

enum sci_status sci_port_get_properties(struct isci_port *iport,
      struct sci_port_properties *prop)
{
 if (!iport || iport->logical_port_index == SCIC_SDS_DUMMY_PORT)
  return SCI_FAILURE_INVALID_PORT;

 prop->index = iport->logical_port_index;
 prop->phy_mask = sci_port_get_phys(iport);
 sci_port_get_sas_address(iport, &prop->local.sas_address);
 sci_port_get_protocols(iport, &prop->local.protocols);
 sci_port_get_attached_sas_address(iport, &prop->remote.sas_address);

 return SCI_SUCCESS;
}
