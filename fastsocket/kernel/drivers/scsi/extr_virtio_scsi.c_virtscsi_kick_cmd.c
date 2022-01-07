
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_vq {int vq; int vq_lock; } ;
struct virtio_scsi_target_state {int tgt_lock; int sg; } ;
struct virtio_scsi_cmd {int dummy; } ;


 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_add_buf (int ,int ,unsigned int,unsigned int,struct virtio_scsi_cmd*) ;
 int virtqueue_kick_prepare (int ) ;
 int virtqueue_notify (int ) ;
 int virtscsi_map_cmd (struct virtio_scsi_target_state*,struct virtio_scsi_cmd*,unsigned int*,unsigned int*,size_t,size_t) ;

__attribute__((used)) static int virtscsi_kick_cmd(struct virtio_scsi_target_state *tgt,
        struct virtio_scsi_vq *vq,
        struct virtio_scsi_cmd *cmd,
        size_t req_size, size_t resp_size)
{
 unsigned int out_num, in_num;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&tgt->tgt_lock, flags);
 virtscsi_map_cmd(tgt, cmd, &out_num, &in_num, req_size, resp_size);

 spin_lock(&vq->vq_lock);
 ret = virtqueue_add_buf(vq->vq, tgt->sg, out_num, in_num, cmd);
 spin_unlock(&tgt->tgt_lock);
 if (ret >= 0)
  ret = virtqueue_kick_prepare(vq->vq);

 spin_unlock_irqrestore(&vq->vq_lock, flags);

 if (ret > 0)
  virtqueue_notify(vq->vq);
 return ret;
}
