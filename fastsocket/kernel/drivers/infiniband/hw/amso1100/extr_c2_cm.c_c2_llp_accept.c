
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
typedef scalar_t__ u32 ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;struct c2_qp* provider_data; int (* add_ref ) (struct iw_cm_id*) ;int device; } ;
struct iw_cm_conn_param {int private_data_len; int private_data; int ird; int ord; int qpn; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {unsigned long context; } ;
struct c2wr_cr_accept_req {scalar_t__ private_data_length; int * private_data; int qp_handle; scalar_t__ ep_handle; int rnic_handle; TYPE_2__ hdr; } ;
struct c2wr_cr_accept_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; int event; struct iw_cm_id* cm_id; struct c2_qp* qp; } ;
struct c2_qp {struct iw_cm_id* cm_id; int adapter_handle; } ;
struct TYPE_3__ {int msg_size; } ;
struct c2_dev {int adapter_handle; TYPE_1__ req_vq; } ;


 int C2_MAX_PRIVATE_DATA_SIZE ;
 int C2_QP_STATE_RTS ;
 int CCWR_CR_ACCEPT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IW_CM_EVENT_ESTABLISHED ;
 int c2_errno (struct c2wr_cr_accept_rep*) ;
 struct ib_qp* c2_get_qp (int ,int ) ;
 int c2_qp_set_read_limits (struct c2_dev*,struct c2_qp*,int ,int ) ;
 int c2_set_qp_state (struct c2_qp*,int ) ;
 int c2_wr_set_id (struct c2wr_cr_accept_req*,int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int kfree (struct c2wr_cr_accept_req*) ;
 struct c2wr_cr_accept_req* kmalloc (int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int stub1 (struct iw_cm_id*) ;
 int stub2 (struct iw_cm_id*) ;
 struct c2_dev* to_c2dev (int ) ;
 struct c2_qp* to_c2qp (struct ib_qp*) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_cr_accept_rep*) ;
 struct c2_vq_req* vq_req_alloc (struct c2_dev*) ;
 int vq_req_free (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_get (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;
 int vq_wait_for_reply (struct c2_dev*,struct c2_vq_req*) ;

int c2_llp_accept(struct iw_cm_id *cm_id, struct iw_cm_conn_param *iw_param)
{
 struct c2_dev *c2dev = to_c2dev(cm_id->device);
 struct c2_qp *qp;
 struct ib_qp *ibqp;
 struct c2wr_cr_accept_req *wr;
 struct c2_vq_req *vq_req;
 struct c2wr_cr_accept_rep *reply;
 int err;

 ibqp = c2_get_qp(cm_id->device, iw_param->qpn);
 if (!ibqp)
  return -EINVAL;
 qp = to_c2qp(ibqp);


 err = c2_qp_set_read_limits(c2dev, qp, iw_param->ord, iw_param->ird);
 if (err)
  goto bail0;


 vq_req = vq_req_alloc(c2dev);
 if (!vq_req) {
  err = -ENOMEM;
  goto bail0;
 }
 vq_req->qp = qp;
 vq_req->cm_id = cm_id;
 vq_req->event = IW_CM_EVENT_ESTABLISHED;

 wr = kmalloc(c2dev->req_vq.msg_size, GFP_KERNEL);
 if (!wr) {
  err = -ENOMEM;
  goto bail1;
 }


 c2_wr_set_id(wr, CCWR_CR_ACCEPT);
 wr->hdr.context = (unsigned long) vq_req;
 wr->rnic_handle = c2dev->adapter_handle;
 wr->ep_handle = (u32) (unsigned long) cm_id->provider_data;
 wr->qp_handle = qp->adapter_handle;


 cm_id->provider_data = qp;
 cm_id->add_ref(cm_id);
 qp->cm_id = cm_id;

 cm_id->provider_data = qp;


 if (iw_param->private_data_len > C2_MAX_PRIVATE_DATA_SIZE) {
  err = -EINVAL;
  goto bail1;
 }

 if (iw_param->private_data) {
  wr->private_data_length = cpu_to_be32(iw_param->private_data_len);
  memcpy(&wr->private_data[0],
         iw_param->private_data, iw_param->private_data_len);
 } else
  wr->private_data_length = 0;


 vq_req_get(c2dev, vq_req);


 err = vq_send_wr(c2dev, (union c2wr *) wr);
 if (err) {
  vq_req_put(c2dev, vq_req);
  goto bail1;
 }


 err = vq_wait_for_reply(c2dev, vq_req);
 if (err)
  goto bail1;


 reply = (struct c2wr_cr_accept_rep *) (unsigned long) vq_req->reply_msg;
 if (!reply) {
  err = -ENOMEM;
  goto bail1;
 }

 err = c2_errno(reply);
 vq_repbuf_free(c2dev, reply);

 if (!err)
  c2_set_qp_state(qp, C2_QP_STATE_RTS);
 bail1:
 kfree(wr);
 vq_req_free(c2dev, vq_req);
 bail0:
 if (err) {




  cm_id->provider_data = ((void*)0);
  qp->cm_id = ((void*)0);
  cm_id->rem_ref(cm_id);
 }
 return err;
}
