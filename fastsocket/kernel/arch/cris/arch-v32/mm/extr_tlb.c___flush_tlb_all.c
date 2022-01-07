
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INVALID_PAGEID ;
 int NUM_TLB_ENTRIES ;
 unsigned long REG_FIELD (int,int ,int ,int) ;
 int RW_MM_TLB_HI ;
 int RW_MM_TLB_LO ;
 int RW_MM_TLB_SEL ;
 int SUPP_BANK_SEL (int) ;
 int SUPP_REG_WR (int ,unsigned long) ;
 int idx ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pid ;
 int rw_mm_tlb_hi ;
 int rw_mm_tlb_sel ;
 int vpn ;

void
__flush_tlb_all(void)
{
 int i;
 int mmu;
 unsigned long flags;
 unsigned long mmu_tlb_hi;
 unsigned long mmu_tlb_sel;





 local_irq_save(flags);

 for (mmu = 1; mmu <= 2; mmu++) {
  SUPP_BANK_SEL(mmu);
  for (i = 0; i < NUM_TLB_ENTRIES; i++) {

   mmu_tlb_sel = REG_FIELD(mmu, rw_mm_tlb_sel, idx, i);

   mmu_tlb_hi = (REG_FIELD(mmu, rw_mm_tlb_hi, pid, INVALID_PAGEID)
        | REG_FIELD(mmu, rw_mm_tlb_hi, vpn, i & 0xf));

   SUPP_REG_WR(RW_MM_TLB_SEL, mmu_tlb_sel);
   SUPP_REG_WR(RW_MM_TLB_HI, mmu_tlb_hi);
   SUPP_REG_WR(RW_MM_TLB_LO, 0);
  }
 }

 local_irq_restore(flags);
}
