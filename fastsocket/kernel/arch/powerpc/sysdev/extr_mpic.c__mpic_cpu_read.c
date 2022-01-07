
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int flags; int * cpuregs; int reg_type; } ;


 int MPIC_PRIMARY ;
 int _mpic_read (int ,int *,unsigned int) ;
 unsigned int hard_smp_processor_id () ;

__attribute__((used)) static inline u32 _mpic_cpu_read(struct mpic *mpic, unsigned int reg)
{
 unsigned int cpu = 0;

 if (mpic->flags & MPIC_PRIMARY)
  cpu = hard_smp_processor_id();
 return _mpic_read(mpic->reg_type, &mpic->cpuregs[cpu], reg);
}
