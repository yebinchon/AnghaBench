
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN_VDSO ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned int PAGE_SHIFT ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int PTRS_PER_PTE ;
 unsigned long TASK_SIZE_MAX ;
 unsigned long align_addr (unsigned long,int *,int ) ;
 int get_random_int () ;

__attribute__((used)) static unsigned long vdso_addr(unsigned long start, unsigned len)
{
 unsigned long addr, end;
 unsigned offset;
 end = (start + PMD_SIZE - 1) & PMD_MASK;
 if (end >= TASK_SIZE_MAX)
  end = TASK_SIZE_MAX;
 end -= len;

 offset = get_random_int() & (PTRS_PER_PTE - 1);
 addr = start + (offset << PAGE_SHIFT);
 if (addr >= end)
  addr = end;






 addr = PAGE_ALIGN(addr);
 addr = align_addr(addr, ((void*)0), ALIGN_VDSO);

 return addr;
}
