
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct paravirt_patch_template {int pv_lock_ops; int pv_mmu_ops; int pv_apic_ops; int pv_irq_ops; int pv_cpu_ops; int pv_time_ops; int pv_init_ops; } ;


 int pv_apic_ops ;
 int pv_cpu_ops ;
 int pv_init_ops ;
 int pv_irq_ops ;
 int pv_lock_ops ;
 int pv_mmu_ops ;
 int pv_time_ops ;

__attribute__((used)) static void *get_call_destination(u8 type)
{
 struct paravirt_patch_template tmpl = {
  .pv_init_ops = pv_init_ops,
  .pv_time_ops = pv_time_ops,
  .pv_cpu_ops = pv_cpu_ops,
  .pv_irq_ops = pv_irq_ops,
  .pv_apic_ops = pv_apic_ops,
  .pv_mmu_ops = pv_mmu_ops,



 };
 return *((void **)&tmpl + type);
}
