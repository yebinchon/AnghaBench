
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_blk {int pool; int * sg; int vq; } ;
struct TYPE_2__ {int type; void* ioprio; scalar_t__ sector; } ;
struct virtblk_req {TYPE_1__ out_hdr; struct request* req; TYPE_1__ status; TYPE_1__ in_hdr; } ;
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int cmd_type; int cmd_len; TYPE_1__* sense; TYPE_1__* cmd; } ;


 int BUG () ;
 int GFP_ATOMIC ;
 int REQ_FLUSH ;



 int SCSI_SENSE_BUFFERSIZE ;
 int VIRTIO_BLK_T_FLUSH ;
 int VIRTIO_BLK_T_GET_ID ;
 int VIRTIO_BLK_T_IN ;
 int VIRTIO_BLK_T_OUT ;
 int VIRTIO_BLK_T_SCSI_CMD ;
 scalar_t__ WRITE ;
 unsigned long blk_rq_map_sg (struct request_queue*,struct request*,int *) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 struct virtblk_req* mempool_alloc (int ,int ) ;
 int mempool_free (struct virtblk_req*,int ) ;
 void* req_get_ioprio (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int sg_set_buf (int *,TYPE_1__*,int) ;
 scalar_t__ virtqueue_add_buf (int ,int *,unsigned long,unsigned long,struct virtblk_req*) ;

__attribute__((used)) static bool do_req(struct request_queue *q, struct virtio_blk *vblk,
     struct request *req)
{
 unsigned long num, out = 0, in = 0;
 struct virtblk_req *vbr;

 vbr = mempool_alloc(vblk->pool, GFP_ATOMIC);
 if (!vbr)

  return 0;

 vbr->req = req;
 if (req->cmd_flags & REQ_FLUSH) {
  vbr->out_hdr.type = VIRTIO_BLK_T_FLUSH;
  vbr->out_hdr.sector = 0;
  vbr->out_hdr.ioprio = req_get_ioprio(vbr->req);
 } else {
  switch (req->cmd_type) {
  case 129:
   vbr->out_hdr.type = 0;
   vbr->out_hdr.sector = blk_rq_pos(vbr->req);
   vbr->out_hdr.ioprio = req_get_ioprio(vbr->req);
   break;
  case 130:
   vbr->out_hdr.type = VIRTIO_BLK_T_SCSI_CMD;
   vbr->out_hdr.sector = 0;
   vbr->out_hdr.ioprio = req_get_ioprio(vbr->req);
   break;
  case 128:
   vbr->out_hdr.type = VIRTIO_BLK_T_GET_ID;
   vbr->out_hdr.sector = 0;
   vbr->out_hdr.ioprio = req_get_ioprio(vbr->req);
   break;
  default:

   BUG();
  }
 }

 sg_set_buf(&vblk->sg[out++], &vbr->out_hdr, sizeof(vbr->out_hdr));







 if (vbr->req->cmd_type == 130)
  sg_set_buf(&vblk->sg[out++], vbr->req->cmd, vbr->req->cmd_len);

 num = blk_rq_map_sg(q, vbr->req, vblk->sg + out);

 if (vbr->req->cmd_type == 130) {
  sg_set_buf(&vblk->sg[num + out + in++], vbr->req->sense, SCSI_SENSE_BUFFERSIZE);
  sg_set_buf(&vblk->sg[num + out + in++], &vbr->in_hdr,
      sizeof(vbr->in_hdr));
 }

 sg_set_buf(&vblk->sg[num + out + in++], &vbr->status,
     sizeof(vbr->status));

 if (num) {
  if (rq_data_dir(vbr->req) == WRITE) {
   vbr->out_hdr.type |= VIRTIO_BLK_T_OUT;
   out += num;
  } else {
   vbr->out_hdr.type |= VIRTIO_BLK_T_IN;
   in += num;
  }
 }

 if (virtqueue_add_buf(vblk->vq, vblk->sg, out, in, vbr) < 0) {
  mempool_free(vbr, vblk->pool);
  return 0;
 }

 return 1;
}
