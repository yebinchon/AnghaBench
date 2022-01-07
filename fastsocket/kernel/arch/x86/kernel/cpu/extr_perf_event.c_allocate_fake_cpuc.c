
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_hw_events {int shared_regs; } ;
struct TYPE_2__ {scalar_t__ extra_regs; } ;


 int ENOMEM ;
 struct cpu_hw_events* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int allocate_shared_regs (int) ;
 int free_fake_cpuc (struct cpu_hw_events*) ;
 struct cpu_hw_events* kzalloc (int,int ) ;
 int raw_smp_processor_id () ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static struct cpu_hw_events *allocate_fake_cpuc(void)
{
 struct cpu_hw_events *cpuc;
 int cpu = raw_smp_processor_id();

 cpuc = kzalloc(sizeof(*cpuc), GFP_KERNEL);
 if (!cpuc)
  return ERR_PTR(-ENOMEM);


 if (x86_pmu.extra_regs) {
  cpuc->shared_regs = allocate_shared_regs(cpu);
  if (!cpuc->shared_regs)
   goto error;
 }
 return cpuc;
error:
 free_fake_cpuc(cpuc);
 return ERR_PTR(-ENOMEM);
}
