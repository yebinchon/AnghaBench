
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_valid; } ;
union scu_remote_node_context {TYPE_1__ ssp; } ;
struct sci_remote_node_context {int remote_node_index; } ;
struct isci_remote_device {TYPE_2__* owning_port; struct domain_device* domain_dev; } ;
struct isci_host {int dummy; } ;
struct domain_device {scalar_t__ parent; } ;
struct TYPE_4__ {struct isci_host* owning_controller; } ;


 int SCU_CONTEXT_COMMAND_POST_RNC_32 ;
 int SCU_CONTEXT_COMMAND_POST_RNC_96 ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 struct isci_remote_device* rnc_to_dev (struct sci_remote_node_context*) ;
 int sci_port_setup_transports (TYPE_2__*,int ) ;
 int sci_remote_device_post_request (struct isci_remote_device*,int ) ;
 union scu_remote_node_context* sci_rnc_by_id (struct isci_host*,int ) ;

__attribute__((used)) static void sci_remote_node_context_validate_context_buffer(struct sci_remote_node_context *sci_rnc)
{
 union scu_remote_node_context *rnc_buffer;
 struct isci_remote_device *idev = rnc_to_dev(sci_rnc);
 struct domain_device *dev = idev->domain_dev;
 struct isci_host *ihost = idev->owning_port->owning_controller;

 rnc_buffer = sci_rnc_by_id(ihost, sci_rnc->remote_node_index);

 rnc_buffer->ssp.is_valid = 1;

 if (dev_is_sata(dev) && dev->parent) {
  sci_remote_device_post_request(idev, SCU_CONTEXT_COMMAND_POST_RNC_96);
 } else {
  sci_remote_device_post_request(idev, SCU_CONTEXT_COMMAND_POST_RNC_32);

  if (!dev->parent)
   sci_port_setup_transports(idev->owning_port,
        sci_rnc->remote_node_index);
 }
}
