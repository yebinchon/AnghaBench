
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vma_data {unsigned long* maddr; scalar_t__ type; int lock; int count; } ;
struct vm_fault {size_t pgoff; scalar_t__ virtual_address; } ;
struct vm_area_struct {struct vma_data* vm_private_data; } ;
typedef size_t pgoff_t ;


 scalar_t__ MSPEC_FETCHOP ;
 unsigned long PAGE_SHIFT ;
 unsigned long TO_AMO (unsigned long) ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 int numa_node_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long uncached_alloc_page (int ,int) ;
 int uncached_free_page (unsigned long,int) ;
 int vm_insert_pfn (struct vm_area_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static int
mspec_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 unsigned long paddr, maddr;
 unsigned long pfn;
 pgoff_t index = vmf->pgoff;
 struct vma_data *vdata = vma->vm_private_data;

 maddr = (volatile unsigned long) vdata->maddr[index];
 if (maddr == 0) {
  maddr = uncached_alloc_page(numa_node_id(), 1);
  if (maddr == 0)
   return VM_FAULT_OOM;

  spin_lock(&vdata->lock);
  if (vdata->maddr[index] == 0) {
   vdata->count++;
   vdata->maddr[index] = maddr;
  } else {
   uncached_free_page(maddr, 1);
   maddr = vdata->maddr[index];
  }
  spin_unlock(&vdata->lock);
 }

 if (vdata->type == MSPEC_FETCHOP)
  paddr = TO_AMO(maddr);
 else
  paddr = maddr & ~__IA64_UNCACHED_OFFSET;

 pfn = paddr >> PAGE_SHIFT;






 vm_insert_pfn(vma, (unsigned long)vmf->virtual_address, pfn);

 return VM_FAULT_NOPAGE;
}
