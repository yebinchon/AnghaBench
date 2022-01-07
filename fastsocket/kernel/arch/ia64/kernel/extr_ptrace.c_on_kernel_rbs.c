
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* ia64_rse_rnat_addr (unsigned long*) ;

__attribute__((used)) static inline int
on_kernel_rbs (unsigned long addr, unsigned long bspstore,
        unsigned long urbs_end)
{
 unsigned long *rnat_addr = ia64_rse_rnat_addr((unsigned long *)
            urbs_end);
 return (addr >= bspstore && addr <= (unsigned long) rnat_addr);
}
