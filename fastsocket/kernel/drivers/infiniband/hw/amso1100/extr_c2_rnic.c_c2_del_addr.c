
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
struct TYPE_4__ {unsigned long context; } ;
struct c2wr_rnic_setconfig_req {int data; int option; int rnic_handle; TYPE_2__ hdr; } ;
struct c2wr_rnic_setconfig_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_netaddr {scalar_t__ mtu; void* netmask; void* ip_addr; } ;
struct TYPE_3__ {int msg_size; } ;
struct c2_dev {int adapter_handle; TYPE_1__ req_vq; } ;
typedef void* __be32 ;


 int C2_CFG_DEL_ADDR ;
 int CCWR_RNIC_SETCONFIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int c2_errno (struct c2wr_rnic_setconfig_rep*) ;
 int c2_wr_set_id (struct c2wr_rnic_setconfig_req*,int ) ;
 int cpu_to_be32 (int ) ;
 int kfree (struct c2wr_rnic_setconfig_req*) ;
 struct c2wr_rnic_setconfig_req* kmalloc (int ,int ) ;
 int memcpy (int ,struct c2_netaddr*,int) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_rnic_setconfig_rep*) ;
 struct c2_vq_req* vq_req_alloc (struct c2_dev*) ;
 int vq_req_free (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_get (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;
 int vq_wait_for_reply (struct c2_dev*,struct c2_vq_req*) ;

int c2_del_addr(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask)
{
 struct c2_vq_req *vq_req;
 struct c2wr_rnic_setconfig_req *wr;
 struct c2wr_rnic_setconfig_rep *reply;
 struct c2_netaddr netaddr;
 int err, len;

 vq_req = vq_req_alloc(c2dev);
 if (!vq_req)
  return -ENOMEM;

 len = sizeof(struct c2_netaddr);
 wr = kmalloc(c2dev->req_vq.msg_size, GFP_KERNEL);
 if (!wr) {
  err = -ENOMEM;
  goto bail0;
 }

 c2_wr_set_id(wr, CCWR_RNIC_SETCONFIG);
 wr->hdr.context = (unsigned long) vq_req;
 wr->rnic_handle = c2dev->adapter_handle;
 wr->option = cpu_to_be32(C2_CFG_DEL_ADDR);

 netaddr.ip_addr = inaddr;
 netaddr.netmask = inmask;
 netaddr.mtu = 0;

 memcpy(wr->data, &netaddr, len);

 vq_req_get(c2dev, vq_req);

 err = vq_send_wr(c2dev, (union c2wr *) wr);
 if (err) {
  vq_req_put(c2dev, vq_req);
  goto bail1;
 }

 err = vq_wait_for_reply(c2dev, vq_req);
 if (err)
  goto bail1;

 reply =
     (struct c2wr_rnic_setconfig_rep *) (unsigned long) (vq_req->reply_msg);
 if (!reply) {
  err = -ENOMEM;
  goto bail1;
 }

 err = c2_errno(reply);
 vq_repbuf_free(c2dev, reply);

      bail1:
 kfree(wr);
      bail0:
 vq_req_free(c2dev, vq_req);
 return err;
}
