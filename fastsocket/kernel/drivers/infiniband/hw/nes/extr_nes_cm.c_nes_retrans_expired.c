
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_node {int state; struct iw_cm_id* cm_id; int cm_core; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;} ;
typedef enum nes_cm_node_state { ____Placeholder_nes_cm_node_state } nes_cm_node_state ;


 int NES_CM_EVENT_ABORTED ;
 int NES_CM_STATE_CLOSED ;




 int add_ref_cm_node (struct nes_cm_node*) ;
 int create_event (struct nes_cm_node*,int ) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;
 int send_reset (struct nes_cm_node*,int *) ;
 int stub1 (struct iw_cm_id*) ;

__attribute__((used)) static void nes_retrans_expired(struct nes_cm_node *cm_node)
{
 struct iw_cm_id *cm_id = cm_node->cm_id;
 enum nes_cm_node_state state = cm_node->state;
 cm_node->state = NES_CM_STATE_CLOSED;

 switch (state) {
 case 128:
 case 131:
  rem_ref_cm_node(cm_node->cm_core, cm_node);
  break;
 case 129:
 case 130:
  if (cm_node->cm_id)
   cm_id->rem_ref(cm_id);
  send_reset(cm_node, ((void*)0));
  break;
 default:
  add_ref_cm_node(cm_node);
  send_reset(cm_node, ((void*)0));
  create_event(cm_node, NES_CM_EVENT_ABORTED);
 }
}
