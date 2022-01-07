
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
typedef scalar_t__ u32 ;
struct iw_cm_id {scalar_t__ provider_data; int device; } ;
struct TYPE_2__ {unsigned long context; } ;
struct c2wr_ep_listen_destroy_req {scalar_t__ ep_handle; int rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_ep_listen_destroy_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_dev {int adapter_handle; } ;


 int CCWR_EP_LISTEN_DESTROY ;
 int EINVAL ;
 int ENOMEM ;
 int c2_errno (struct c2wr_ep_listen_destroy_rep*) ;
 int c2_wr_set_id (struct c2wr_ep_listen_destroy_req*,int ) ;
 struct c2_dev* to_c2dev (int ) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_ep_listen_destroy_rep*) ;
 struct c2_vq_req* vq_req_alloc (struct c2_dev*) ;
 int vq_req_free (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_get (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;
 int vq_wait_for_reply (struct c2_dev*,struct c2_vq_req*) ;

int c2_llp_service_destroy(struct iw_cm_id *cm_id)
{

 struct c2_dev *c2dev;
 struct c2wr_ep_listen_destroy_req wr;
 struct c2wr_ep_listen_destroy_rep *reply;
 struct c2_vq_req *vq_req;
 int err;

 c2dev = to_c2dev(cm_id->device);
 if (c2dev == ((void*)0))
  return -EINVAL;




 vq_req = vq_req_alloc(c2dev);
 if (!vq_req)
  return -ENOMEM;




 c2_wr_set_id(&wr, CCWR_EP_LISTEN_DESTROY);
 wr.hdr.context = (unsigned long) vq_req;
 wr.rnic_handle = c2dev->adapter_handle;
 wr.ep_handle = (u32)(unsigned long)cm_id->provider_data;




 vq_req_get(c2dev, vq_req);




 err = vq_send_wr(c2dev, (union c2wr *) & wr);
 if (err) {
  vq_req_put(c2dev, vq_req);
  goto bail0;
 }




 err = vq_wait_for_reply(c2dev, vq_req);
 if (err)
  goto bail0;




 reply=(struct c2wr_ep_listen_destroy_rep *)(unsigned long)vq_req->reply_msg;
 if (!reply) {
  err = -ENOMEM;
  goto bail0;
 }
 if ((err = c2_errno(reply)) != 0)
  goto bail1;

 bail1:
 vq_repbuf_free(c2dev, reply);
 bail0:
 vq_req_free(c2dev, vq_req);
 return err;
}
