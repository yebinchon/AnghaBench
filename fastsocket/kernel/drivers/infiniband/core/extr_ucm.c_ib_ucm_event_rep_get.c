
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_rep_event_resp {int srq; int rnr_retry_count; int flow_control; int failover_accepted; int target_ack_delay; int initiator_depth; int responder_resources; int starting_psn; int remote_qpn; int remote_qkey; int remote_ca_guid; } ;
struct ib_cm_rep_event_param {int srq; int rnr_retry_count; int flow_control; int failover_accepted; int target_ack_delay; int initiator_depth; int responder_resources; int starting_psn; int remote_qpn; int remote_qkey; int remote_ca_guid; } ;



__attribute__((used)) static void ib_ucm_event_rep_get(struct ib_ucm_rep_event_resp *urep,
     struct ib_cm_rep_event_param *krep)
{
 urep->remote_ca_guid = krep->remote_ca_guid;
 urep->remote_qkey = krep->remote_qkey;
 urep->remote_qpn = krep->remote_qpn;
 urep->starting_psn = krep->starting_psn;
 urep->responder_resources = krep->responder_resources;
 urep->initiator_depth = krep->initiator_depth;
 urep->target_ack_delay = krep->target_ack_delay;
 urep->failover_accepted = krep->failover_accepted;
 urep->flow_control = krep->flow_control;
 urep->rnr_retry_count = krep->rnr_retry_count;
 urep->srq = krep->srq;
}
