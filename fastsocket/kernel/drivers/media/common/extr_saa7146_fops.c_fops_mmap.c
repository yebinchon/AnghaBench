
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct videobuf_queue {int dummy; } ;
struct saa7146_fh {int type; struct videobuf_queue vbi_q; struct videobuf_queue video_q; } ;
struct file {struct saa7146_fh* private_data; } ;


 int BUG () ;
 int DEB_EE (char*) ;


 int videobuf_mmap_mapper (struct videobuf_queue*,struct vm_area_struct*) ;

__attribute__((used)) static int fops_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct saa7146_fh *fh = file->private_data;
 struct videobuf_queue *q;

 switch (fh->type) {
 case 128: {
  DEB_EE(("V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\n",file, vma));
  q = &fh->video_q;
  break;
  }
 case 129: {
  DEB_EE(("V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\n",file, vma));
  q = &fh->vbi_q;
  break;
  }
 default:
  BUG();
  return 0;
 }

 return videobuf_mmap_mapper(q,vma);
}
