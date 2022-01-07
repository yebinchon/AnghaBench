
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 int octeon_flush_icache_all_cores (struct vm_area_struct*) ;

__attribute__((used)) static void octeon_flush_cache_sigtramp(unsigned long addr)
{
 struct vm_area_struct *vma;

 vma = find_vma(current->mm, addr);
 octeon_flush_icache_all_cores(vma);
}
