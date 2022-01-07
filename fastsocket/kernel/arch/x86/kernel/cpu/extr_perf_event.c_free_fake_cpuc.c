
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {struct cpu_hw_events* shared_regs; } ;


 int kfree (struct cpu_hw_events*) ;

__attribute__((used)) static void free_fake_cpuc(struct cpu_hw_events *cpuc)
{
 kfree(cpuc->shared_regs);
 kfree(cpuc);
}
