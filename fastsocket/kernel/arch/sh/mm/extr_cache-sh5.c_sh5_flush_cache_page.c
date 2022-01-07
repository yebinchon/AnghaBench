
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;


 unsigned long PAGE_SHIFT ;
 int VM_EXEC ;
 int sh64_dcache_purge_phy_page (unsigned long) ;
 int sh64_icache_inv_user_page (struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static void sh5_flush_cache_page(void *args)
{
 struct flusher_data *data = args;
 struct vm_area_struct *vma;
 unsigned long eaddr, pfn;

 vma = data->vma;
 eaddr = data->addr1;
 pfn = data->addr2;

 sh64_dcache_purge_phy_page(pfn << PAGE_SHIFT);

 if (vma->vm_flags & VM_EXEC)
  sh64_icache_inv_user_page(vma, eaddr);
}
