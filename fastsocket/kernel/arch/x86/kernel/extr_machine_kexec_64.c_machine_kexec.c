
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ type; int preserve_context; int start; scalar_t__ head; int swap_page; int control_code_page; } ;


 int KEXEC_CONTROL_CODE_MAX_SIZE ;
 scalar_t__ KEXEC_TYPE_DEFAULT ;
 int PAGES_NR ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 size_t PA_CONTROL_PAGE ;
 size_t PA_SWAP_PAGE ;
 size_t PA_TABLE_PAGE ;
 size_t VA_CONTROL_PAGE ;
 int __ftrace_enabled_restore (int) ;
 int __ftrace_enabled_save () ;
 scalar_t__ __pa (void*) ;
 int disable_IO_APIC (int ) ;
 int load_segments () ;
 int local_irq_disable () ;
 int memcpy (void*,int (*) (unsigned long,unsigned long,int ,int ),int ) ;
 void* page_address (int ) ;
 unsigned long page_to_pfn (int ) ;
 int phys_to_virt (int ) ;
 int relocate_kernel (unsigned long,unsigned long,int ,int ) ;
 int restore_processor_state () ;
 int save_processor_state () ;
 int set_gdt (int ,int ) ;
 int set_idt (int ,int ) ;
 unsigned long virt_to_phys (void*) ;

void machine_kexec(struct kimage *image)
{
 unsigned long page_list[PAGES_NR];
 void *control_page;
 int save_ftrace_enabled;






 save_ftrace_enabled = __ftrace_enabled_save();


 local_irq_disable();

 if (image->preserve_context) {
 }

 control_page = page_address(image->control_code_page) + PAGE_SIZE;
 memcpy(control_page, relocate_kernel, KEXEC_CONTROL_CODE_MAX_SIZE);

 page_list[PA_CONTROL_PAGE] = virt_to_phys(control_page);
 page_list[VA_CONTROL_PAGE] = (unsigned long)control_page;
 page_list[PA_TABLE_PAGE] =
   (unsigned long)__pa(page_address(image->control_code_page));

 if (image->type == KEXEC_TYPE_DEFAULT)
  page_list[PA_SWAP_PAGE] = (page_to_pfn(image->swap_page)
      << PAGE_SHIFT);
 load_segments();




 set_gdt(phys_to_virt(0), 0);
 set_idt(phys_to_virt(0), 0);


 image->start = relocate_kernel((unsigned long)image->head,
           (unsigned long)page_list,
           image->start,
           image->preserve_context);






 __ftrace_enabled_restore(save_ftrace_enabled);
}
