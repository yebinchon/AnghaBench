
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_mtrr_data {unsigned int smp_reg; unsigned long smp_base; unsigned long smp_size; int smp_type; } ;
typedef int mtrr_type ;


 int cpu_online_mask ;
 int mtrr_rendezvous_handler ;
 int stop_machine (int ,struct set_mtrr_data*,int ) ;

__attribute__((used)) static void
set_mtrr(unsigned int reg, unsigned long base, unsigned long size, mtrr_type type, bool force)
{
 struct set_mtrr_data data = { .smp_reg = reg,
          .smp_base = base,
          .smp_size = size,
          .smp_type = type
        };
 stop_machine(mtrr_rendezvous_handler, &data, cpu_online_mask);
}
