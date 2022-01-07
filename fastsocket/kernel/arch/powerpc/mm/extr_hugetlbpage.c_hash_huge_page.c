
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,unsigned int,int,int) ;long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int) ;int (* hpte_remove ) (unsigned long) ;} ;


 int CPU_FTR_COHERENT_ICACHE ;
 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_R_N ;
 int HPTE_V_SECONDARY ;
 unsigned long PAGE_SHIFT ;
 unsigned long _PAGE_ACCESSED ;
 unsigned long _PAGE_BUSY ;
 unsigned long _PAGE_COHERENT ;
 unsigned long _PAGE_DIRTY ;
 unsigned long _PAGE_EXEC ;
 unsigned long _PAGE_F_GIX ;
 unsigned long _PAGE_F_SECOND ;
 unsigned long _PAGE_GUARDED ;
 unsigned long _PAGE_HASHPTE ;
 unsigned long _PAGE_HPTEFLAGS ;
 unsigned long _PAGE_HPTE_SUB0 ;
 unsigned long _PAGE_NO_CACHE ;
 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_RW ;
 unsigned long _PAGE_WRITETHRU ;
 unsigned long __cmpxchg_u64 (unsigned long*,unsigned long,unsigned long) ;
 int __pte (unsigned long) ;
 int cpu_has_feature (int ) ;
 unsigned int get_slice_psize (struct mm_struct*,unsigned long) ;
 int hash_failure_debug (unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned int,unsigned long) ;
 unsigned long hash_huge_page_do_lazy_icache (unsigned long,int ,unsigned long,unsigned long) ;
 unsigned long hpt_hash (unsigned long,int,int) ;
 unsigned long hpt_va (unsigned long,unsigned long,int) ;
 unsigned long htab_hash_mask ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ likely (int) ;
 int mftb () ;
 int * mmu_huge_psizes ;
 int mmu_psize_to_shift (unsigned int) ;
 TYPE_1__ ppc_md ;
 unsigned long pte_pfn (int ) ;
 unsigned long pte_val (int ) ;
 int stub1 (unsigned long,unsigned long,unsigned long,unsigned int,int,int) ;
 long stub2 (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int) ;
 long stub3 (unsigned long,unsigned long,unsigned long,unsigned long,int ,unsigned int,int) ;
 int stub4 (unsigned long) ;
 scalar_t__ unlikely (int) ;
 int user_segment_size (unsigned long) ;

int hash_huge_page(struct mm_struct *mm, unsigned long access,
     unsigned long ea, unsigned long vsid, int local,
     unsigned long trap)
{
 pte_t *ptep;
 unsigned long old_pte, new_pte;
 unsigned long va, rflags, pa, sz;
 long slot;
 int ssize = user_segment_size(ea);
 unsigned int mmu_psize;
 int shift;

 mmu_psize = get_slice_psize(mm, ea);

 if (!mmu_huge_psizes[mmu_psize])
  return 1;
 ptep = huge_pte_offset(mm, ea);


 va = hpt_va(ea, vsid, ssize);



 if (unlikely(!ptep))
  return 1;


 access |= _PAGE_PRESENT;
 do {
  old_pte = pte_val(*ptep);

  if (unlikely(old_pte & _PAGE_BUSY))
   return 0;

  if (unlikely(access & ~old_pte))
   return 1;


  new_pte = old_pte | _PAGE_BUSY | _PAGE_ACCESSED;
  if (access & _PAGE_RW)
   new_pte |= _PAGE_DIRTY;
 } while(old_pte != __cmpxchg_u64((unsigned long *)ptep,
      old_pte, new_pte));

 rflags = 0x2 | (!(new_pte & _PAGE_RW));

 rflags |= ((new_pte & _PAGE_EXEC) ? 0 : HPTE_R_N);
 shift = mmu_psize_to_shift(mmu_psize);
 sz = ((1UL) << shift);
 if (!cpu_has_feature(CPU_FTR_COHERENT_ICACHE))


  rflags = hash_huge_page_do_lazy_icache(rflags, __pte(old_pte),
             trap, sz);


 if (unlikely(old_pte & _PAGE_HASHPTE)) {

  unsigned long hash, slot;

  hash = hpt_hash(va, shift, ssize);
  if (old_pte & _PAGE_F_SECOND)
   hash = ~hash;
  slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
  slot += (old_pte & _PAGE_F_GIX) >> 12;

  if (ppc_md.hpte_updatepp(slot, rflags, va, mmu_psize,
      ssize, local) == -1)
   old_pte &= ~_PAGE_HPTEFLAGS;
 }

 if (likely(!(old_pte & _PAGE_HASHPTE))) {
  unsigned long hash = hpt_hash(va, shift, ssize);
  unsigned long hpte_group;

  pa = pte_pfn(__pte(old_pte)) << PAGE_SHIFT;

repeat:
  hpte_group = ((hash & htab_hash_mask) *
         HPTES_PER_GROUP) & ~0x7UL;





  new_pte = (new_pte & ~_PAGE_HPTEFLAGS) | _PAGE_HASHPTE;


  rflags |= (new_pte & (_PAGE_WRITETHRU | _PAGE_NO_CACHE |
          _PAGE_COHERENT | _PAGE_GUARDED));


  slot = ppc_md.hpte_insert(hpte_group, va, pa, rflags, 0,
       mmu_psize, ssize);


  if (unlikely(slot == -1)) {
   hpte_group = ((~hash & htab_hash_mask) *
          HPTES_PER_GROUP) & ~0x7UL;
   slot = ppc_md.hpte_insert(hpte_group, va, pa, rflags,
        HPTE_V_SECONDARY,
        mmu_psize, ssize);
   if (slot == -1) {
    if (mftb() & 0x1)
     hpte_group = ((hash & htab_hash_mask) *
            HPTES_PER_GROUP)&~0x7UL;

    ppc_md.hpte_remove(hpte_group);
    goto repeat;
                        }
  }





  if (unlikely(slot == -2)) {
   *ptep = __pte(old_pte);
   hash_failure_debug(ea, access, vsid, trap, ssize,
        mmu_psize, old_pte);
   return -1;
  }

  new_pte |= (slot << 12) & (_PAGE_F_SECOND | _PAGE_F_GIX);
 }




 *ptep = __pte(new_pte & ~_PAGE_BUSY);
 return 0;
}
