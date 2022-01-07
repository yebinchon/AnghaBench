
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int vm_flags; int vm_file; } ;


 int VM_EXEC ;
 int copy_page (void*,void*) ;
 int flush_dcache_page (struct page*) ;
 TYPE_1__* vma ;

void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
      struct page *pg)
{
 copy_page(vto, vfrom);
 flush_dcache_page(pg);
}
