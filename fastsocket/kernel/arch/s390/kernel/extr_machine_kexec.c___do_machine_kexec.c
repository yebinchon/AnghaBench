
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int start; int head; int control_code_page; } ;
typedef int (* relocate_kernel_t ) (int *,int ) ;


 scalar_t__ page_to_phys (int ) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void __do_machine_kexec(void *data)
{
 relocate_kernel_t data_mover;
 struct kimage *image = data;

 data_mover = (relocate_kernel_t) page_to_phys(image->control_code_page);


 (*data_mover)(&image->head, image->start);
}
