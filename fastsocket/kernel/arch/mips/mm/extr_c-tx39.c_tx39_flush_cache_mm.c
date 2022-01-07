
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 scalar_t__ cpu_context (int ,struct mm_struct*) ;
 int cpu_has_dc_aliases ;
 int smp_processor_id () ;
 int tx39_blast_dcache () ;

__attribute__((used)) static void tx39_flush_cache_mm(struct mm_struct *mm)
{
 if (!cpu_has_dc_aliases)
  return;

 if (cpu_context(smp_processor_id(), mm) != 0)
  tx39_blast_dcache();
}
