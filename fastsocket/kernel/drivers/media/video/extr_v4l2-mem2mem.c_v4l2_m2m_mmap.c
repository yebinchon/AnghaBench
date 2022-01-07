
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; } ;
struct videobuf_queue {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct file {int dummy; } ;


 unsigned long DST_QUEUE_OFF_BASE ;
 unsigned long PAGE_SHIFT ;
 struct videobuf_queue* v4l2_m2m_get_dst_vq (struct v4l2_m2m_ctx*) ;
 struct videobuf_queue* v4l2_m2m_get_src_vq (struct v4l2_m2m_ctx*) ;
 int videobuf_mmap_mapper (struct videobuf_queue*,struct vm_area_struct*) ;

int v4l2_m2m_mmap(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
    struct vm_area_struct *vma)
{
 unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
 struct videobuf_queue *vq;

 if (offset < DST_QUEUE_OFF_BASE) {
  vq = v4l2_m2m_get_src_vq(m2m_ctx);
 } else {
  vq = v4l2_m2m_get_dst_vq(m2m_ctx);
  vma->vm_pgoff -= (DST_QUEUE_OFF_BASE >> PAGE_SHIFT);
 }

 return videobuf_mmap_mapper(vq, vma);
}
