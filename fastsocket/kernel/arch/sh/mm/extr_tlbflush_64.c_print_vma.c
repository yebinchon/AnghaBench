
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; int vm_end; int vm_start; } ;


 int print_prots (int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static inline void print_vma(struct vm_area_struct *vma)
{
 printk("vma start 0x%08lx\n", vma->vm_start);
 printk("vma end   0x%08lx\n", vma->vm_end);

 print_prots(vma->vm_page_prot);
 printk("vm_flags 0x%08lx\n", vma->vm_flags);
}
