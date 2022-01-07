
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_mtrr_data {unsigned int smp_reg; unsigned long smp_base; unsigned long smp_size; int smp_type; } ;
typedef int mtrr_type ;


 int cpu_callout_mask ;
 int mtrr_rendezvous_handler ;
 int stop_machine_from_inactive_cpu (int ,struct set_mtrr_data*,int ) ;

__attribute__((used)) static void set_mtrr_from_inactive_cpu(unsigned int reg, unsigned long base,
          unsigned long size, mtrr_type type)
{
 struct set_mtrr_data data = { .smp_reg = reg,
          .smp_base = base,
          .smp_size = size,
          .smp_type = type
        };

 stop_machine_from_inactive_cpu(mtrr_rendezvous_handler, &data,
           cpu_callout_mask);
}
