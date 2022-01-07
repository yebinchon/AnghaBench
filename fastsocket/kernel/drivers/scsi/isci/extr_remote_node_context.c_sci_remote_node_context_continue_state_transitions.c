
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_remote_node_context {int destination_state; int user_cookie; int user_callback; } ;





 int RNC_DEST_UNSPECIFIED ;
 int sci_remote_node_context_resume (struct sci_remote_node_context*,int ,int ) ;

__attribute__((used)) static void sci_remote_node_context_continue_state_transitions(struct sci_remote_node_context *rnc)
{
 switch (rnc->destination_state) {
 case 129:
 case 128:
  rnc->destination_state = 129;

 case 130:
  sci_remote_node_context_resume(rnc, rnc->user_callback,
            rnc->user_cookie);
  break;
 default:
  rnc->destination_state = RNC_DEST_UNSPECIFIED;
  break;
 }
}
