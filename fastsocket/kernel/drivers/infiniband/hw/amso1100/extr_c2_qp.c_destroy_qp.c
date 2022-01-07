
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
struct TYPE_4__ {unsigned long context; } ;
struct c2wr_qp_destroy_req {int qp_handle; int rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_qp_destroy_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; int event; TYPE_2__* cm_id; struct c2_qp* qp; } ;
struct c2_qp {scalar_t__ state; int lock; TYPE_2__* cm_id; int adapter_handle; } ;
struct c2_dev {int adapter_handle; } ;
struct TYPE_5__ {int (* rem_ref ) (TYPE_2__*) ;} ;


 int CCWR_QP_DESTROY ;
 int ENOMEM ;
 scalar_t__ IB_QPS_RTS ;
 int IW_CM_EVENT_CLOSE ;
 int c2_wr_set_id (struct c2wr_qp_destroy_req*,int ) ;
 int pr_debug (char*,struct c2_qp*,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_qp_destroy_rep*) ;
 struct c2_vq_req* vq_req_alloc (struct c2_dev*) ;
 int vq_req_free (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_get (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;
 int vq_wait_for_reply (struct c2_dev*,struct c2_vq_req*) ;

__attribute__((used)) static int destroy_qp(struct c2_dev *c2dev, struct c2_qp *qp)
{
 struct c2_vq_req *vq_req;
 struct c2wr_qp_destroy_req wr;
 struct c2wr_qp_destroy_rep *reply;
 unsigned long flags;
 int err;




 vq_req = vq_req_alloc(c2dev);
 if (!vq_req) {
  return -ENOMEM;
 }




 c2_wr_set_id(&wr, CCWR_QP_DESTROY);
 wr.hdr.context = (unsigned long) vq_req;
 wr.rnic_handle = c2dev->adapter_handle;
 wr.qp_handle = qp->adapter_handle;




 vq_req_get(c2dev, vq_req);

 spin_lock_irqsave(&qp->lock, flags);
 if (qp->cm_id && qp->state == IB_QPS_RTS) {
  pr_debug("destroy_qp: generating CLOSE event for QP-->ERR, "
   "qp=%p, cm_id=%p\n",qp,qp->cm_id);

  vq_req->qp = qp;
  vq_req->cm_id = qp->cm_id;
  vq_req->event = IW_CM_EVENT_CLOSE;
 }
 spin_unlock_irqrestore(&qp->lock, flags);




 err = vq_send_wr(c2dev, (union c2wr *) & wr);
 if (err) {
  vq_req_put(c2dev, vq_req);
  goto bail0;
 }




 err = vq_wait_for_reply(c2dev, vq_req);
 if (err) {
  goto bail0;
 }




 reply = (struct c2wr_qp_destroy_rep *) (unsigned long) (vq_req->reply_msg);
 if (!reply) {
  err = -ENOMEM;
  goto bail0;
 }

 spin_lock_irqsave(&qp->lock, flags);
 if (qp->cm_id) {
  qp->cm_id->rem_ref(qp->cm_id);
  qp->cm_id = ((void*)0);
 }
 spin_unlock_irqrestore(&qp->lock, flags);

 vq_repbuf_free(c2dev, reply);
      bail0:
 vq_req_free(c2dev, vq_req);
 return err;
}
