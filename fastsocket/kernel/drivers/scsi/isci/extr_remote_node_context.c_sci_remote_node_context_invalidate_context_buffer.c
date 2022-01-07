
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_valid; } ;
union scu_remote_node_context {TYPE_2__ ssp; } ;
struct sci_remote_node_context {int remote_node_index; } ;
struct isci_remote_device {TYPE_1__* owning_port; } ;
struct isci_host {int dummy; } ;
struct TYPE_3__ {struct isci_host* owning_controller; } ;


 int SCU_CONTEXT_COMMAND_POST_RNC_INVALIDATE ;
 struct isci_remote_device* rnc_to_dev (struct sci_remote_node_context*) ;
 int sci_remote_device_post_request (struct isci_remote_device*,int ) ;
 union scu_remote_node_context* sci_rnc_by_id (struct isci_host*,int ) ;

__attribute__((used)) static void sci_remote_node_context_invalidate_context_buffer(struct sci_remote_node_context *sci_rnc)
{
 union scu_remote_node_context *rnc_buffer;
 struct isci_remote_device *idev = rnc_to_dev(sci_rnc);
 struct isci_host *ihost = idev->owning_port->owning_controller;

 rnc_buffer = sci_rnc_by_id(ihost, sci_rnc->remote_node_index);

 rnc_buffer->ssp.is_valid = 0;

 sci_remote_device_post_request(rnc_to_dev(sci_rnc),
           SCU_CONTEXT_COMMAND_POST_RNC_INVALIDATE);
}
