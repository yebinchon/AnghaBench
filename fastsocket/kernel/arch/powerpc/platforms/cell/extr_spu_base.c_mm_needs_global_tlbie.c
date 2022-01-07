
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int NR_CPUS ;
 int bitmap_fill (int ,int) ;
 int cpumask_bits (int ) ;
 int mm_cpumask (struct mm_struct*) ;

__attribute__((used)) static inline void mm_needs_global_tlbie(struct mm_struct *mm)
{
 int nr = (NR_CPUS > 1) ? NR_CPUS : NR_CPUS + 1;


 bitmap_fill(cpumask_bits(mm_cpumask(mm)), nr);
}
