
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int cpu_pgd; int lg; } ;


 int flush_user_mappings (int ,int ) ;

void guest_pagetable_flush_user(struct lg_cpu *cpu)
{

 flush_user_mappings(cpu->lg, cpu->cpu_pgd);
}
