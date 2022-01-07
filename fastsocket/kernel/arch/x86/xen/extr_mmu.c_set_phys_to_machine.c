
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int __set_phys_to_machine (unsigned long,unsigned long) ;
 int alloc_p2m (unsigned long) ;
 scalar_t__ unlikely (int) ;

void set_phys_to_machine(unsigned long pfn, unsigned long mfn)
{
 if (unlikely(!__set_phys_to_machine(pfn, mfn))) {
  alloc_p2m(pfn);

  if (!__set_phys_to_machine(pfn, mfn))
   BUG();
 }
}
