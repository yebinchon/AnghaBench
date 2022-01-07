
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
typedef int tmp ;
struct iw_cm_event {int ird; int ord; int event; int private_data_len; int * private_data; int remote_addr; int local_addr; int status; } ;
struct c2wr_hdr {scalar_t__ context; } ;
struct c2_vq_req {int event; int wait_object; int reply_ready; int reply_msg; TYPE_1__* cm_id; int qp; } ;
struct c2_mq {int msg_size; } ;
struct c2_dev {scalar_t__* qptr_array; } ;
struct TYPE_2__ {int (* event_handler ) (TYPE_1__*,struct iw_cm_event*) ;int remote_addr; int local_addr; } ;


 int C2_QP_STATE_RTS ;
 int ENOMEM ;


 int atomic_set (int *,int) ;
 int c2_errno (void*) ;
 void* c2_mq_consume (struct c2_mq*) ;
 int c2_mq_free (struct c2_mq*) ;
 int c2_set_qp_state (int ,int ) ;
 int memcpy (struct c2wr_hdr*,void*,int) ;
 int pr_debug (char*) ;
 int stub1 (TYPE_1__*,struct iw_cm_event*) ;
 struct c2wr_hdr* vq_repbuf_alloc (struct c2_dev*) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_hdr*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_vq(struct c2_dev *c2dev, u32 mq_index)
{
 void *adapter_msg, *reply_msg;
 struct c2wr_hdr *host_msg;
 struct c2wr_hdr tmp;
 struct c2_mq *reply_vq;
 struct c2_vq_req *req;
 struct iw_cm_event cm_event;
 int err;

 reply_vq = (struct c2_mq *) c2dev->qptr_array[mq_index];





 adapter_msg = c2_mq_consume(reply_vq);
 if (adapter_msg == ((void*)0)) {
  return;
 }

 host_msg = vq_repbuf_alloc(c2dev);






 if (!host_msg) {
  pr_debug("handle_vq: no repbufs!\n");





  host_msg = &tmp;
  memcpy(host_msg, adapter_msg, sizeof(tmp));
  reply_msg = ((void*)0);
 } else {
  memcpy(host_msg, adapter_msg, reply_vq->msg_size);
  reply_msg = host_msg;
 }




 c2_mq_free(reply_vq);




 req = (struct c2_vq_req *) (unsigned long) host_msg->context;
 if (req == ((void*)0)) {




  vq_repbuf_free(c2dev, host_msg);
  pr_debug("handle_vq: UNEXPECTEDLY got NULL req\n");
  return;
 }

 if (reply_msg)
  err = c2_errno(reply_msg);
 else
  err = -ENOMEM;

 if (!err) switch (req->event) {
 case 128:
  c2_set_qp_state(req->qp,
    C2_QP_STATE_RTS);




  cm_event.ird = cm_event.ord = 128;
 case 129:





  cm_event.event = req->event;
  cm_event.status = 0;
  cm_event.local_addr = req->cm_id->local_addr;
  cm_event.remote_addr = req->cm_id->remote_addr;
  cm_event.private_data = ((void*)0);
  cm_event.private_data_len = 0;
  req->cm_id->event_handler(req->cm_id, &cm_event);
  break;
 default:
  break;
 }

 req->reply_msg = (u64) (unsigned long) (reply_msg);
 atomic_set(&req->reply_ready, 1);
 wake_up(&req->wait_object);





 vq_req_put(c2dev, req);
}
