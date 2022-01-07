
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tlbiel; } ;


 int CPU_FTR_LOCKLESS_TLBIE ;
 int CPU_FTR_TLBIEL ;
 int __tlbie (unsigned long,int,int) ;
 int __tlbiel (unsigned long,int,int) ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_1__* mmu_psize_defs ;
 int native_tlbie_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void tlbie(unsigned long va, int psize, int ssize, int local)
{
 unsigned int use_local = local && cpu_has_feature(CPU_FTR_TLBIEL);
 int lock_tlbie = !cpu_has_feature(CPU_FTR_LOCKLESS_TLBIE);

 if (use_local)
  use_local = mmu_psize_defs[psize].tlbiel;
 if (lock_tlbie && !use_local)
  spin_lock(&native_tlbie_lock);
 asm volatile("ptesync": : :"memory");
 if (use_local) {
  __tlbiel(va, psize, ssize);
  asm volatile("ptesync": : :"memory");
 } else {
  __tlbie(va, psize, ssize);
  asm volatile("eieio; tlbsync; ptesync": : :"memory");
 }
 if (lock_tlbie && !use_local)
  spin_unlock(&native_tlbie_lock);
}
