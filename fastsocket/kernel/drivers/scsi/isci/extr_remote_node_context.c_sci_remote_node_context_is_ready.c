
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ current_state_id; } ;
struct sci_remote_node_context {TYPE_1__ sm; } ;


 scalar_t__ SCI_RNC_READY ;

bool sci_remote_node_context_is_ready(
 struct sci_remote_node_context *sci_rnc)
{
 u32 current_state = sci_rnc->sm.current_state_id;

 if (current_state == SCI_RNC_READY) {
  return 1;
 }

 return 0;
}
