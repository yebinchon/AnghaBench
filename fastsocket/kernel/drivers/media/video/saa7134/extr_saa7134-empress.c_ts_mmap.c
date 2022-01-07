
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct saa7134_dev {int empress_tsq; } ;
struct file {struct saa7134_dev* private_data; } ;


 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

__attribute__((used)) static int
ts_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct saa7134_dev *dev = file->private_data;

 return videobuf_mmap_mapper(&dev->empress_tsq, vma);
}
