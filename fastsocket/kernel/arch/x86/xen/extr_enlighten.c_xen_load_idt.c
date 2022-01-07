
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trap_info {int dummy; } ;
struct desc_ptr {int dummy; } ;
typedef struct desc_ptr __get_cpu_var ;
typedef int DEFINE_SPINLOCK ;


 int BUG () ;
 scalar_t__ HYPERVISOR_set_trap_table (struct trap_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xen_convert_trap_info (struct desc_ptr const*,struct trap_info*) ;
 int xen_mc_flush () ;

__attribute__((used)) static void xen_load_idt(const struct desc_ptr *desc)
{
 static DEFINE_SPINLOCK(lock);
 static struct trap_info traps[257];

 spin_lock(&lock);

 __get_cpu_var(idt_desc) = *desc;

 xen_convert_trap_info(desc, traps);

 xen_mc_flush();
 if (HYPERVISOR_set_trap_table(traps))
  BUG();

 spin_unlock(&lock);
}
