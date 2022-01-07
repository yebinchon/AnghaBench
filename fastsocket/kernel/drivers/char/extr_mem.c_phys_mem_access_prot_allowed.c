
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int pgprot_t ;



int __attribute__((weak)) phys_mem_access_prot_allowed(struct file *file,
 unsigned long pfn, unsigned long size, pgprot_t *vma_prot)
{
 return 1;
}
