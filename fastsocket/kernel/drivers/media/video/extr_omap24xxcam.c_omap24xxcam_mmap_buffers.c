
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; unsigned int vm_end; unsigned int vm_start; int vm_page_prot; } ;
struct videobuf_queue {int vb_lock; TYPE_1__** bufs; } ;
struct videobuf_dmabuf {unsigned int sglen; int * sglist; } ;
struct omap24xxcam_fh {struct videobuf_queue vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int mutex; scalar_t__ streaming; } ;
struct file {struct omap24xxcam_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ memory; int boff; scalar_t__ bsize; } ;


 int EBUSY ;
 int PAGE_SHIFT ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 unsigned int VIDEO_MAX_FRAME ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_to_pfn (int ) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned int,int ,scalar_t__,int ) ;
 scalar_t__ sg_dma_len (int *) ;
 int sg_page (int *) ;
 struct videobuf_dmabuf* videobuf_to_dma (TYPE_1__*) ;

__attribute__((used)) static int omap24xxcam_mmap_buffers(struct file *file,
        struct vm_area_struct *vma)
{
 struct omap24xxcam_fh *fh = file->private_data;
 struct omap24xxcam_device *cam = fh->cam;
 struct videobuf_queue *vbq = &fh->vbq;
 unsigned int first, last, size, i, j;
 int err = 0;

 mutex_lock(&cam->mutex);
 if (cam->streaming) {
  mutex_unlock(&cam->mutex);
  return -EBUSY;
 }
 mutex_unlock(&cam->mutex);
 mutex_lock(&vbq->vb_lock);


 for (first = 0; first < VIDEO_MAX_FRAME; first++) {
  if (((void*)0) == vbq->bufs[first])
   continue;
  if (V4L2_MEMORY_MMAP != vbq->bufs[first]->memory)
   continue;
  if (vbq->bufs[first]->boff == (vma->vm_pgoff << PAGE_SHIFT))
   break;
 }


 for (size = 0, last = first; last < VIDEO_MAX_FRAME; last++) {
  if (((void*)0) == vbq->bufs[last])
   continue;
  if (V4L2_MEMORY_MMAP != vbq->bufs[last]->memory)
   continue;
  size += vbq->bufs[last]->bsize;
  if (size == (vma->vm_end - vma->vm_start))
   break;
 }

 size = 0;
 for (i = first; i <= last; i++) {
  struct videobuf_dmabuf *dma = videobuf_to_dma(vbq->bufs[i]);

  for (j = 0; j < dma->sglen; j++) {
   err = remap_pfn_range(
    vma, vma->vm_start + size,
    page_to_pfn(sg_page(&dma->sglist[j])),
    sg_dma_len(&dma->sglist[j]), vma->vm_page_prot);
   if (err)
    goto out;
   size += sg_dma_len(&dma->sglist[j]);
  }
 }

out:
 mutex_unlock(&vbq->vb_lock);

 return err;
}
