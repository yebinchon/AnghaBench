
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remote_node_index; } ;
struct isci_remote_device {int device_port_width; int connection_rate; TYPE_1__ rnc; struct domain_device* domain_dev; } ;
struct isci_port {int owning_controller; } ;
struct domain_device {int linkrate; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCI_SUCCESS ;
 int min_t (int ,int ,int ) ;
 int sci_controller_allocate_remote_node_context (int ,struct isci_remote_device*,int *) ;
 int sci_port_get_max_allowed_speed (struct isci_port*) ;
 int sci_remote_device_construct (struct isci_port*,struct isci_remote_device*) ;
 int u16 ;

__attribute__((used)) static enum sci_status sci_remote_device_ea_construct(struct isci_port *iport,
             struct isci_remote_device *idev)
{
 struct domain_device *dev = idev->domain_dev;
 enum sci_status status;

 sci_remote_device_construct(iport, idev);

 status = sci_controller_allocate_remote_node_context(iport->owning_controller,
          idev,
          &idev->rnc.remote_node_index);
 if (status != SCI_SUCCESS)
  return status;
 idev->connection_rate = min_t(u16, sci_port_get_max_allowed_speed(iport),
      dev->linkrate);


 idev->device_port_width = 1;

 return SCI_SUCCESS;
}
