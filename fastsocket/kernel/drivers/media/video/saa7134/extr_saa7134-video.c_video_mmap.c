
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct saa7134_fh {int dummy; } ;
struct file {struct saa7134_fh* private_data; } ;


 int saa7134_queue (struct saa7134_fh*) ;
 int videobuf_mmap_mapper (int ,struct vm_area_struct*) ;

__attribute__((used)) static int video_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct saa7134_fh *fh = file->private_data;

 return videobuf_mmap_mapper(saa7134_queue(fh), vma);
}
