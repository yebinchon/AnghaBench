
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {int dummy; } ;


 int get_queue (struct cx23885_fh*) ;
 int videobuf_mmap_mapper (int ,struct vm_area_struct*) ;

__attribute__((used)) static int video_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct cx23885_fh *fh = file->private_data;

 return videobuf_mmap_mapper(get_queue(fh), vma);
}
