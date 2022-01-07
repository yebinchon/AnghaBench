
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int echo; } ;
struct TYPE_7__ {TYPE_1__ eth_event; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
union event_ring_elem {TYPE_3__ message; } ;
struct TYPE_9__ {int (* complete ) (struct bnx2x*,TYPE_4__*,union event_ring_elem*,unsigned long*) ;} ;
struct TYPE_10__ {int (* complete ) (struct bnx2x*,TYPE_5__*,union event_ring_elem*,unsigned long*) ;} ;
struct bnx2x_vf_queue {TYPE_4__ vlan_obj; TYPE_5__ mac_obj; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;


 int BNX2X_MSG_IOV ;
 int BNX2X_SWCID_SHIFT ;
 int DP (int ,char*) ;
 int RAMROD_CONT ;
 int set_bit (int ,unsigned long*) ;
 int stub1 (struct bnx2x*,TYPE_5__*,union event_ring_elem*,unsigned long*) ;
 int stub2 (struct bnx2x*,TYPE_4__*,union event_ring_elem*,unsigned long*) ;

__attribute__((used)) static
void bnx2x_vf_handle_classification_eqe(struct bnx2x *bp,
     struct bnx2x_vf_queue *vfq,
     union event_ring_elem *elem)
{
 unsigned long ramrod_flags = 0;
 int rc = 0;


 set_bit(RAMROD_CONT, &ramrod_flags);

 switch (elem->message.data.eth_event.echo >> BNX2X_SWCID_SHIFT) {
 case 129:
  rc = vfq->mac_obj.complete(bp, &vfq->mac_obj, elem,
        &ramrod_flags);
  break;
 case 128:
  rc = vfq->vlan_obj.complete(bp, &vfq->vlan_obj, elem,
         &ramrod_flags);
  break;
 default:
  BNX2X_ERR("Unsupported classification command: %d\n",
     elem->message.data.eth_event.echo);
  return;
 }
 if (rc < 0)
  BNX2X_ERR("Failed to schedule new commands: %d\n", rc);
 else if (rc > 0)
  DP(BNX2X_MSG_IOV, "Scheduled next pending commands...\n");
}
