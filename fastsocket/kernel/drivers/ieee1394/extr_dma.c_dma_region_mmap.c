
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;
struct dma_region {int dummy; } ;


 int EINVAL ;

int dma_region_mmap(struct dma_region *dma, struct file *file,
      struct vm_area_struct *vma)
{
 return -EINVAL;
}
