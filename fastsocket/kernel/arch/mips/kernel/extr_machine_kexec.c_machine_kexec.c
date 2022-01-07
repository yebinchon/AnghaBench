
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {unsigned long head; int start; int control_code_page; } ;
typedef int (* noretfun_t ) () ;


 unsigned long IND_DESTINATION ;
 unsigned long IND_DONE ;
 unsigned long IND_INDIRECTION ;
 unsigned long IND_SOURCE ;
 unsigned long PAGE_MASK ;
 int __flush_cache_all () ;
 unsigned long kexec_indirection_page ;
 int kexec_start_address ;
 int local_irq_disable () ;
 int memcpy (void*,int ,int ) ;
 scalar_t__ page_address (int ) ;
 unsigned long* phys_to_virt (unsigned long) ;
 int printk (char*,...) ;
 int relocate_new_kernel ;
 int relocate_new_kernel_size ;
 int stub1 () ;

void
machine_kexec(struct kimage *image)
{
 unsigned long reboot_code_buffer;
 unsigned long entry;
 unsigned long *ptr;

 reboot_code_buffer =
   (unsigned long)page_address(image->control_code_page);

 kexec_start_address = image->start;
 kexec_indirection_page =
  (unsigned long) phys_to_virt(image->head & PAGE_MASK);

 memcpy((void*)reboot_code_buffer, relocate_new_kernel,
        relocate_new_kernel_size);







 for (ptr = &image->head; (entry = *ptr) && !(entry &IND_DONE);
      ptr = (entry & IND_INDIRECTION) ?
        phys_to_virt(entry & PAGE_MASK) : ptr + 1) {
  if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
      *ptr & IND_DESTINATION)
   *ptr = (unsigned long) phys_to_virt(*ptr);
 }




 local_irq_disable();

 printk("Will call new kernel at %08lx\n", image->start);
 printk("Bye ...\n");
 __flush_cache_all();
 ((noretfun_t) reboot_code_buffer)();
}
