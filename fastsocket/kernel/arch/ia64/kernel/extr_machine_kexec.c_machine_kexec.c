
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 int BUG_ON (int) ;
 int ia64_machine_kexec ;
 int unw_init_running (int ,struct kimage*) ;

void machine_kexec(struct kimage *image)
{
 BUG_ON(!image);
 unw_init_running(ia64_machine_kexec, image);
 for(;;);
}
