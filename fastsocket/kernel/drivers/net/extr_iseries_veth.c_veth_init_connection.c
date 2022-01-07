
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct veth_msg {int token; } ;
struct TYPE_3__ {int num_buffers; int ack_timeout; int ack_threshold; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct veth_lpar_connection {size_t remote_lp; int reset_timeout; int num_events; TYPE_1__ local_caps; struct veth_msg* msgs; int kobject; int pending_acks; TYPE_2__ reset_timer; TYPE_2__ ack_timer; int statemachine_wq; int lock; } ;


 int ACK_THRESHOLD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int HvLpConfig_doLpsCommunicateOnVirtualLan (size_t,size_t) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int VETH_ACKTIMEOUT ;
 int VETH_NUMBUFFERS ;
 int init_timer (TYPE_2__*) ;
 struct veth_msg* kcalloc (int,int,int ) ;
 int kobject_init (int *,int *) ;
 struct veth_lpar_connection* kzalloc (int,int ) ;
 int memset (int *,int,int) ;
 int spin_lock_init (int *) ;
 size_t this_lp ;
 int veth_allocate_events (size_t,int) ;
 struct veth_lpar_connection** veth_cnx ;
 int veth_error (char*,size_t) ;
 int veth_lpar_connection_ktype ;
 int veth_stack_push (struct veth_lpar_connection*,struct veth_msg*) ;
 int veth_statemachine ;
 int veth_timed_ack ;
 int veth_timed_reset ;

__attribute__((used)) static int veth_init_connection(u8 rlp)
{
 struct veth_lpar_connection *cnx;
 struct veth_msg *msgs;
 int i;

 if ( (rlp == this_lp)
      || ! HvLpConfig_doLpsCommunicateOnVirtualLan(this_lp, rlp) )
  return 0;

 cnx = kzalloc(sizeof(*cnx), GFP_KERNEL);
 if (! cnx)
  return -ENOMEM;

 cnx->remote_lp = rlp;
 spin_lock_init(&cnx->lock);
 INIT_DELAYED_WORK(&cnx->statemachine_wq, veth_statemachine);

 init_timer(&cnx->ack_timer);
 cnx->ack_timer.function = veth_timed_ack;
 cnx->ack_timer.data = (unsigned long) cnx;

 init_timer(&cnx->reset_timer);
 cnx->reset_timer.function = veth_timed_reset;
 cnx->reset_timer.data = (unsigned long) cnx;
 cnx->reset_timeout = 5 * HZ * (VETH_ACKTIMEOUT / 1000000);

 memset(&cnx->pending_acks, 0xff, sizeof (cnx->pending_acks));

 veth_cnx[rlp] = cnx;



 kobject_init(&cnx->kobject, &veth_lpar_connection_ktype);

 msgs = kcalloc(VETH_NUMBUFFERS, sizeof(struct veth_msg), GFP_KERNEL);
 if (! msgs) {
  veth_error("Can't allocate buffers for LPAR %d.\n", rlp);
  return -ENOMEM;
 }

 cnx->msgs = msgs;

 for (i = 0; i < VETH_NUMBUFFERS; i++) {
  msgs[i].token = i;
  veth_stack_push(cnx, msgs + i);
 }

 cnx->num_events = veth_allocate_events(rlp, 2 + VETH_NUMBUFFERS);

 if (cnx->num_events < (2 + VETH_NUMBUFFERS)) {
  veth_error("Can't allocate enough events for LPAR %d.\n", rlp);
  return -ENOMEM;
 }

 cnx->local_caps.num_buffers = VETH_NUMBUFFERS;
 cnx->local_caps.ack_threshold = ACK_THRESHOLD;
 cnx->local_caps.ack_timeout = VETH_ACKTIMEOUT;

 return 0;
}
