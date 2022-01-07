
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcv_nxt; } ;
struct nes_cm_node {int state; int cm_core; TYPE_1__ tcp_cntxt; int ref_count; } ;


 int NES_CM_EVENT_ABORTED ;
 void* NES_CM_STATE_CLOSED ;
 int NES_CM_STATE_CLOSING ;



 int NES_CM_STATE_LAST_ACK ;






 int NES_DBG_CM ;
 int NES_TIMER_TYPE_CLOSE ;
 int add_ref_cm_node (struct nes_cm_node*) ;
 int atomic_read (int *) ;
 int cleanup_retrans_entry (struct nes_cm_node*) ;
 int create_event (struct nes_cm_node*,int ) ;
 int nes_debug (int ,char*,struct nes_cm_node*,int,...) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;
 int schedule_nes_timer (struct nes_cm_node*,int *,int ,int,int ) ;
 int send_ack (struct nes_cm_node*,int *) ;
 int send_fin (struct nes_cm_node*,int *) ;
 int send_reset (struct nes_cm_node*,int *) ;

__attribute__((used)) static void handle_fin_pkt(struct nes_cm_node *cm_node)
{
 nes_debug(NES_DBG_CM, "Received FIN, cm_node = %p, state = %u. "
    "refcnt=%d\n", cm_node, cm_node->state,
    atomic_read(&cm_node->ref_count));
 switch (cm_node->state) {
 case 131:
 case 130:
 case 136:
 case 133:
  cm_node->tcp_cntxt.rcv_nxt++;
  cleanup_retrans_entry(cm_node);
  cm_node->state = NES_CM_STATE_LAST_ACK;
  send_fin(cm_node, ((void*)0));
  break;
 case 132:
  create_event(cm_node, NES_CM_EVENT_ABORTED);
  cm_node->tcp_cntxt.rcv_nxt++;
  cleanup_retrans_entry(cm_node);
  cm_node->state = NES_CM_STATE_CLOSED;
  add_ref_cm_node(cm_node);
  send_reset(cm_node, ((void*)0));
  break;
 case 135:
  cm_node->tcp_cntxt.rcv_nxt++;
  cleanup_retrans_entry(cm_node);
  cm_node->state = NES_CM_STATE_CLOSING;
  send_ack(cm_node, ((void*)0));



  break;
 case 134:
  cm_node->tcp_cntxt.rcv_nxt++;
  cleanup_retrans_entry(cm_node);
  cm_node->state = 129;
  send_ack(cm_node, ((void*)0));
  schedule_nes_timer(cm_node, ((void*)0), NES_TIMER_TYPE_CLOSE, 1, 0);
  break;
 case 129:
  cm_node->tcp_cntxt.rcv_nxt++;
  cleanup_retrans_entry(cm_node);
  cm_node->state = NES_CM_STATE_CLOSED;
  rem_ref_cm_node(cm_node->cm_core, cm_node);
  break;
 case 128:
 default:
  nes_debug(NES_DBG_CM, "Error Rcvd FIN for node-%p state = %d\n",
   cm_node, cm_node->state);
  break;
 }
}
