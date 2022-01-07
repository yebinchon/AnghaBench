
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long v; } ;


 int DBG_LOW (char*,unsigned long,unsigned long) ;
 int HPTE_V_COMPARE (unsigned long,unsigned long) ;
 unsigned long HPTE_V_VALID ;
 unsigned long hpte_encode_v (unsigned long,int,int) ;
 struct hash_pte* htab_address ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int native_lock_hpte (struct hash_pte*) ;
 int native_unlock_hpte (struct hash_pte*) ;
 int tlbie (unsigned long,int,int,int) ;

__attribute__((used)) static void native_hpte_invalidate(unsigned long slot, unsigned long va,
       int psize, int ssize, int local)
{
 struct hash_pte *hptep = htab_address + slot;
 unsigned long hpte_v;
 unsigned long want_v;
 unsigned long flags;

 local_irq_save(flags);

 DBG_LOW("    invalidate(va=%016lx, hash: %x)\n", va, slot);

 want_v = hpte_encode_v(va, psize, ssize);
 native_lock_hpte(hptep);
 hpte_v = hptep->v;


 if (!HPTE_V_COMPARE(hpte_v, want_v) || !(hpte_v & HPTE_V_VALID))
  native_unlock_hpte(hptep);
 else

  hptep->v = 0;


 tlbie(va, psize, ssize, local);

 local_irq_restore(flags);
}
