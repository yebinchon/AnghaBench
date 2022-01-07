
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash_save_vmcoreinfo () ;
 int ia64_kimage ;
 int kexec_disable_iosapic () ;
 int local_irq_disable () ;
 int machine_kexec (int ) ;

__attribute__((used)) static void
machine_kdump_on_init(void)
{
 crash_save_vmcoreinfo();
 local_irq_disable();
 kexec_disable_iosapic();
 machine_kexec(ia64_kimage);
}
