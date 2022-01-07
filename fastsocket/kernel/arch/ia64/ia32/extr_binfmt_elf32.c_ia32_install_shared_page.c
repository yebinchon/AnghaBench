
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {int page; } ;
struct vm_area_struct {int dummy; } ;


 int get_page (int ) ;
 int * ia32_shared_page ;
 size_t smp_processor_id () ;

int
ia32_install_shared_page (struct vm_area_struct *vma, struct vm_fault *vmf)
{
 vmf->page = ia32_shared_page[smp_processor_id()];
 get_page(vmf->page);
 return 0;
}
