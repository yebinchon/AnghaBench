
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_remote_node_context {void* user_cookie; int user_callback; int destination_state; } ;
struct isci_host {int eventq; } ;
typedef int scics_sds_remote_node_context_callback ;


 int RNC_DEST_FINAL ;
 struct isci_host* idev_to_ihost (int ) ;
 int rnc_to_dev (struct sci_remote_node_context*) ;
 int wake_up (int *) ;

__attribute__((used)) static void sci_remote_node_context_setup_to_destroy(
 struct sci_remote_node_context *sci_rnc,
 scics_sds_remote_node_context_callback callback,
 void *callback_parameter)
{
 struct isci_host *ihost = idev_to_ihost(rnc_to_dev(sci_rnc));

 sci_rnc->destination_state = RNC_DEST_FINAL;
 sci_rnc->user_callback = callback;
 sci_rnc->user_cookie = callback_parameter;

 wake_up(&ihost->eventq);
}
