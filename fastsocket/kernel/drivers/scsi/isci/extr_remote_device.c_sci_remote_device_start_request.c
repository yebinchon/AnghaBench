
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_request {int dummy; } ;
struct isci_remote_device {int started_request_count; int kref; struct isci_port* owning_port; } ;
struct isci_port {int dummy; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCI_SUCCESS ;
 int kref_get (int *) ;
 int sci_port_complete_io (struct isci_port*,struct isci_remote_device*,struct isci_request*) ;

__attribute__((used)) static void sci_remote_device_start_request(struct isci_remote_device *idev,
       struct isci_request *ireq,
       enum sci_status status)
{
 struct isci_port *iport = idev->owning_port;


 if (status != SCI_SUCCESS)
  sci_port_complete_io(iport, idev, ireq);
 else {
  kref_get(&idev->kref);
  idev->started_request_count++;
 }
}
