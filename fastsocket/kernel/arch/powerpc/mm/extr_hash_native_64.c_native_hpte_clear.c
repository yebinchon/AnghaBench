
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long v; } ;


 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_V_VALID ;
 int __tlbie (unsigned long,int,int) ;
 int hpte_decode (struct hash_pte*,unsigned long,int*,int*,unsigned long*) ;
 struct hash_pte* htab_address ;
 int htab_hash_mask ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int native_tlbie_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void native_hpte_clear(void)
{
 unsigned long slot, slots, flags;
 struct hash_pte *hptep = htab_address;
 unsigned long hpte_v, va;
 unsigned long pteg_count;
 int psize, ssize;

 pteg_count = htab_hash_mask + 1;

 local_irq_save(flags);




 spin_lock(&native_tlbie_lock);

 slots = pteg_count * HPTES_PER_GROUP;

 for (slot = 0; slot < slots; slot++, hptep++) {





  hpte_v = hptep->v;





  if (hpte_v & HPTE_V_VALID) {
   hpte_decode(hptep, slot, &psize, &ssize, &va);
   hptep->v = 0;
   __tlbie(va, psize, ssize);
  }
 }

 asm volatile("eieio; tlbsync; ptesync":::"memory");
 spin_unlock(&native_tlbie_lock);
 local_irq_restore(flags);
}
