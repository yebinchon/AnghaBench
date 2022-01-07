
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {unsigned long context; } ;
struct c2wr_nsmr_pbl_req {int * paddrs; TYPE_2__ hdr; void* flags; void* addrs_length; int stag_index; int rnic_handle; } ;
struct c2wr_nsmr_pbl_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct TYPE_3__ {int msg_size; } ;
struct c2_dev {int adapter_handle; TYPE_1__ req_vq; } ;
typedef int __be32 ;


 int CCWR_NSMR_PBL ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEM_PBL_COMPLETE ;
 scalar_t__ PAGE_SIZE ;


 int c2_errno (struct c2wr_nsmr_pbl_rep*) ;
 int c2_wr_set_id (struct c2wr_nsmr_pbl_req*,int ) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int kfree (struct c2wr_nsmr_pbl_req*) ;
 struct c2wr_nsmr_pbl_req* kmalloc (int,int ) ;
 int min (int,int) ;
 int vq_repbuf_free (struct c2_dev*,struct c2wr_nsmr_pbl_rep*) ;
 int vq_req_get (struct c2_dev*,struct c2_vq_req*) ;
 int vq_req_put (struct c2_dev*,struct c2_vq_req*) ;
 int vq_send_wr (struct c2_dev*,union c2wr*) ;
 int vq_wait_for_reply (struct c2_dev*,struct c2_vq_req*) ;

__attribute__((used)) static int
send_pbl_messages(struct c2_dev *c2dev, __be32 stag_index,
    unsigned long va, u32 pbl_depth,
    struct c2_vq_req *vq_req, int pbl_type)
{
 u32 pbe_count;
 u32 count;
 struct c2wr_nsmr_pbl_req *wr;
 struct c2wr_nsmr_pbl_rep *reply;
  int err, pbl_virt, pbl_index, i;

 switch (pbl_type) {
 case 128:
  pbl_virt = 1;
  break;
 case 129:
  pbl_virt = 0;
  break;
 default:
  return -EINVAL;
  break;
 }

 pbe_count = (c2dev->req_vq.msg_size -
       sizeof(struct c2wr_nsmr_pbl_req)) / sizeof(u64);
 wr = kmalloc(c2dev->req_vq.msg_size, GFP_KERNEL);
 if (!wr) {
  return -ENOMEM;
 }
 c2_wr_set_id(wr, CCWR_NSMR_PBL);






 wr->hdr.context = 0;
 wr->rnic_handle = c2dev->adapter_handle;
 wr->stag_index = stag_index;
 wr->flags = 0;
 pbl_index = 0;
 while (pbl_depth) {
  count = min(pbe_count, pbl_depth);
  wr->addrs_length = cpu_to_be32(count);






  if (count == pbl_depth) {




   vq_req_get(c2dev, vq_req);
   wr->flags = cpu_to_be32(MEM_PBL_COMPLETE);






   wr->hdr.context = (unsigned long) vq_req;
  }
  for (i = 0; i < count; i++) {
   if (pbl_virt) {
    va += PAGE_SIZE;
   } else {
     wr->paddrs[i] =
        cpu_to_be64(((u64 *)va)[pbl_index + i]);
   }
  }




  err = vq_send_wr(c2dev, (union c2wr *) wr);
  if (err) {
   if (count <= pbe_count) {
    vq_req_put(c2dev, vq_req);
   }
   goto bail0;
  }
  pbl_depth -= count;
  pbl_index += count;
 }




 err = vq_wait_for_reply(c2dev, vq_req);
 if (err) {
  goto bail0;
 }




 reply = (struct c2wr_nsmr_pbl_rep *) (unsigned long) vq_req->reply_msg;
 if (!reply) {
  err = -ENOMEM;
  goto bail0;
 }

 err = c2_errno(reply);

 vq_repbuf_free(c2dev, reply);
      bail0:
 kfree(wr);
 return err;
}
