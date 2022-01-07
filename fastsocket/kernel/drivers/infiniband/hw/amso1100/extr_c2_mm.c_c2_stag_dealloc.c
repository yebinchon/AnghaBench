
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ context; } ;
struct c2wr_stag_dealloc_req {int stag_index; int rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_stag_dealloc_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_dev {int adapter_handle; } ;


 int CCWR_STAG_DEALLOC ;
 int ENOMEM ;
 int c2_errno (struct c2wr_stag_dealloc_rep*) ;
 int c2_wr_set_id (struct c2wr_stag_dealloc_req*,int ) ;
 int cpu_to_be32 (int ) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_stag_dealloc_rep*) ;
 struct c2_vq_req* vq_req_alloc (struct c2_dev*) ;
 int vq_req_free (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_get (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;
 int vq_wait_for_reply (struct c2_dev*,struct c2_vq_req*) ;

int c2_stag_dealloc(struct c2_dev *c2dev, u32 stag_index)
{
 struct c2_vq_req *vq_req;
 struct c2wr_stag_dealloc_req wr;
 struct c2wr_stag_dealloc_rep *reply;
 int err;





 vq_req = vq_req_alloc(c2dev);
 if (!vq_req) {
  return -ENOMEM;
 }




 c2_wr_set_id(&wr, CCWR_STAG_DEALLOC);
 wr.hdr.context = (u64) (unsigned long) vq_req;
 wr.rnic_handle = c2dev->adapter_handle;
 wr.stag_index = cpu_to_be32(stag_index);




 vq_req_get(c2dev, vq_req);




 err = vq_send_wr(c2dev, (union c2wr *) & wr);
 if (err) {
  vq_req_put(c2dev, vq_req);
  goto bail0;
 }




 err = vq_wait_for_reply(c2dev, vq_req);
 if (err) {
  goto bail0;
 }




 reply = (struct c2wr_stag_dealloc_rep *) (unsigned long) vq_req->reply_msg;
 if (!reply) {
  err = -ENOMEM;
  goto bail0;
 }

 err = c2_errno(reply);

 vq_repbuf_free(c2dev, reply);
      bail0:
 vq_req_free(c2dev, vq_req);
 return err;
}
