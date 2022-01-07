
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {struct cx8802_fh* private_data; } ;
struct cx8802_fh {int mpegq; } ;


 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int
mpeg_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct cx8802_fh *fh = file->private_data;

 return videobuf_mmap_mapper(&fh->mpegq, vma);
}
