
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {int sin_port; TYPE_3__ sin_addr; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;struct c2_qp* provider_data; TYPE_4__ remote_addr; int (* add_ref ) (struct iw_cm_id*) ;int device; } ;
struct iw_cm_conn_param {int private_data_len; int private_data; int ird; int ord; int qpn; } ;
struct ib_qp {int dummy; } ;
struct TYPE_6__ {scalar_t__ context; } ;
struct c2wr_qp_connect_req {scalar_t__ private_data_length; int * private_data; int remote_port; int remote_addr; int qp_handle; int rnic_handle; TYPE_2__ hdr; } ;
struct c2_vq_req {int dummy; } ;
struct c2_qp {struct iw_cm_id* cm_id; int adapter_handle; } ;
struct TYPE_5__ {int msg_size; } ;
struct c2_dev {int adapter_handle; TYPE_1__ req_vq; } ;


 int C2_MAX_PRIVATE_DATA_SIZE ;
 int CCWR_QP_CONNECT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ib_qp* c2_get_qp (int ,int ) ;
 int c2_qp_set_read_limits (struct c2_dev*,struct c2_qp*,int ,int ) ;
 int c2_wr_set_id (struct c2wr_qp_connect_req*,int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int kfree (struct c2wr_qp_connect_req*) ;
 struct c2wr_qp_connect_req* kmalloc (int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int stub1 (struct iw_cm_id*) ;
 int stub2 (struct iw_cm_id*) ;
 struct c2_dev* to_c2dev (int ) ;
 struct c2_qp* to_c2qp (struct ib_qp*) ;
 struct c2_vq_req* vq_req_alloc (struct c2_dev*) ;
 int vq_req_free (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;

int c2_llp_connect(struct iw_cm_id *cm_id, struct iw_cm_conn_param *iw_param)
{
 struct c2_dev *c2dev = to_c2dev(cm_id->device);
 struct ib_qp *ibqp;
 struct c2_qp *qp;
 struct c2wr_qp_connect_req *wr;
 struct c2_vq_req *vq_req;
 int err;

 ibqp = c2_get_qp(cm_id->device, iw_param->qpn);
 if (!ibqp)
  return -EINVAL;
 qp = to_c2qp(ibqp);


 cm_id->provider_data = qp;
 cm_id->add_ref(cm_id);
 qp->cm_id = cm_id;




 if (iw_param->private_data_len > C2_MAX_PRIVATE_DATA_SIZE) {
  err = -EINVAL;
  goto bail0;
 }



 err = c2_qp_set_read_limits(c2dev, qp, iw_param->ord, iw_param->ird);
 if (err)
  goto bail0;




 wr = kmalloc(c2dev->req_vq.msg_size, GFP_KERNEL);
 if (!wr) {
  err = -ENOMEM;
  goto bail0;
 }

 vq_req = vq_req_alloc(c2dev);
 if (!vq_req) {
  err = -ENOMEM;
  goto bail1;
 }

 c2_wr_set_id(wr, CCWR_QP_CONNECT);
 wr->hdr.context = 0;
 wr->rnic_handle = c2dev->adapter_handle;
 wr->qp_handle = qp->adapter_handle;

 wr->remote_addr = cm_id->remote_addr.sin_addr.s_addr;
 wr->remote_port = cm_id->remote_addr.sin_port;





 if (iw_param->private_data) {
  wr->private_data_length =
   cpu_to_be32(iw_param->private_data_len);
  memcpy(&wr->private_data[0], iw_param->private_data,
         iw_param->private_data_len);
 } else
  wr->private_data_length = 0;





 err = vq_send_wr(c2dev, (union c2wr *) wr);
 vq_req_free(c2dev, vq_req);

 bail1:
 kfree(wr);
 bail0:
 if (err) {




  cm_id->provider_data = ((void*)0);
  qp->cm_id = ((void*)0);
  cm_id->rem_ref(cm_id);
 }
 return err;
}
