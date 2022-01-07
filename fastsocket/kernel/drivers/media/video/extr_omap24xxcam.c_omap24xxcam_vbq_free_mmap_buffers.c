
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct videobuf_queue {int vb_lock; TYPE_2__** bufs; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ memory; } ;
struct TYPE_5__ {int (* buf_release ) (struct videobuf_queue*,TYPE_2__*) ;} ;


 scalar_t__ V4L2_MEMORY_MMAP ;
 int VIDEO_MAX_FRAME ;
 int kfree (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap24xxcam_vbq_free_mmap_buffer (TYPE_2__*) ;
 int stub1 (struct videobuf_queue*,TYPE_2__*) ;
 int videobuf_mmap_free (struct videobuf_queue*) ;

__attribute__((used)) static void omap24xxcam_vbq_free_mmap_buffers(struct videobuf_queue *vbq)
{
 int i;

 mutex_lock(&vbq->vb_lock);

 for (i = 0; i < VIDEO_MAX_FRAME; i++) {
  if (((void*)0) == vbq->bufs[i])
   continue;
  if (V4L2_MEMORY_MMAP != vbq->bufs[i]->memory)
   continue;
  vbq->ops->buf_release(vbq, vbq->bufs[i]);
  omap24xxcam_vbq_free_mmap_buffer(vbq->bufs[i]);
  kfree(vbq->bufs[i]);
  vbq->bufs[i] = ((void*)0);
 }

 mutex_unlock(&vbq->vb_lock);

 videobuf_mmap_free(vbq);
}
