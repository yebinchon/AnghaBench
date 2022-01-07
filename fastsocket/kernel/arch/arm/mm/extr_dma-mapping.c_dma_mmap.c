
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_page_prot; } ;
struct device {int dummy; } ;
struct arm_vm_region {unsigned long vm_end; unsigned long vm_start; int vm_pages; } ;
typedef int dma_addr_t ;


 int ENXIO ;
 unsigned long PAGE_SHIFT ;
 struct arm_vm_region* arm_vm_region_find (int *,unsigned long) ;
 int consistent_head ;
 int consistent_lock ;
 scalar_t__ page_to_pfn (int ) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,scalar_t__,unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dma_mmap(struct device *dev, struct vm_area_struct *vma,
      void *cpu_addr, dma_addr_t dma_addr, size_t size)
{
 int ret = -ENXIO;
 return ret;
}
