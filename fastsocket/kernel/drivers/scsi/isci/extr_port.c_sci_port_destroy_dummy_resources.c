
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {int reserved_tag; int reserved_rni; struct isci_host* owning_controller; } ;
struct isci_host {int available_remote_nodes; } ;


 int SCI_CONTROLLER_INVALID_IO_TAG ;
 int SCU_DUMMY_INDEX ;
 int isci_free_tag (struct isci_host*,int ) ;
 int sci_remote_node_table_release_remote_node_index (int *,int,int ) ;

__attribute__((used)) static void sci_port_destroy_dummy_resources(struct isci_port *iport)
{
 struct isci_host *ihost = iport->owning_controller;

 if (iport->reserved_tag != SCI_CONTROLLER_INVALID_IO_TAG)
  isci_free_tag(ihost, iport->reserved_tag);

 if (iport->reserved_rni != SCU_DUMMY_INDEX)
  sci_remote_node_table_release_remote_node_index(&ihost->available_remote_nodes,
             1, iport->reserved_rni);

 iport->reserved_rni = SCU_DUMMY_INDEX;
 iport->reserved_tag = SCI_CONTROLLER_INVALID_IO_TAG;
}
