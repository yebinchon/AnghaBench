
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_mmap (struct device*,struct vm_area_struct*,void*,int ,size_t) ;
 int pgprot_noncached (int ) ;

int dma_mmap_coherent(struct device *dev, struct vm_area_struct *vma,
        void *cpu_addr, dma_addr_t dma_addr, size_t size)
{
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 return dma_mmap(dev, vma, cpu_addr, dma_addr, size);
}
