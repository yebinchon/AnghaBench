
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_blk {TYPE_3__* disk; int pool; int vq; } ;
struct TYPE_7__ {int errors; int sense_len; int residual; } ;
struct virtblk_req {int status; TYPE_5__* req; TYPE_2__ in_hdr; } ;
struct TYPE_10__ {scalar_t__ cmd_type; int errors; int sense_len; int resid_len; } ;
struct TYPE_9__ {int queue_lock; } ;
struct TYPE_8__ {TYPE_4__* queue; } ;
struct TYPE_6__ {struct virtio_blk* priv; } ;


 int EIO ;
 int ENOTTY ;
 scalar_t__ REQ_TYPE_BLOCK_PC ;
 scalar_t__ REQ_TYPE_SPECIAL ;


 int __blk_end_request_all (TYPE_5__*,int) ;
 int blk_start_queue (TYPE_4__*) ;
 int mempool_free (struct virtblk_req*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct virtblk_req* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static void blk_done(struct virtqueue *vq)
{
 struct virtio_blk *vblk = vq->vdev->priv;
 struct virtblk_req *vbr;
 unsigned int len;
 unsigned long flags;

 spin_lock_irqsave(vblk->disk->queue->queue_lock, flags);
 while ((vbr = virtqueue_get_buf(vblk->vq, &len)) != ((void*)0)) {
  int error;

  switch (vbr->status) {
  case 129:
   error = 0;
   break;
  case 128:
   error = -ENOTTY;
   break;
  default:
   error = -EIO;
   break;
  }

  if (vbr->req->cmd_type == REQ_TYPE_BLOCK_PC) {
   vbr->req->resid_len = vbr->in_hdr.residual;
   vbr->req->sense_len = vbr->in_hdr.sense_len;
   vbr->req->errors = vbr->in_hdr.errors;
  }
  if (vbr->req->cmd_type == REQ_TYPE_SPECIAL)
   vbr->req->errors = (error != 0);

  __blk_end_request_all(vbr->req, error);
  mempool_free(vbr, vblk->pool);
 }

 blk_start_queue(vblk->disk->queue);
 spin_unlock_irqrestore(vblk->disk->queue->queue_lock, flags);
}
