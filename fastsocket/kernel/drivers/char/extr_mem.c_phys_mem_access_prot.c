
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int pgprot_t ;


 unsigned long PAGE_SHIFT ;
 int pgprot_noncached (int ) ;
 scalar_t__ uncached_access (struct file*,unsigned long) ;

__attribute__((used)) static pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
         unsigned long size, pgprot_t vma_prot)
{






 return vma_prot;
}
