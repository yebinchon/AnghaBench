
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long page_id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int INVALID_PAGEID ;
 unsigned long NO_CONTEXT ;
 int NUM_TLB_ENTRIES ;
 unsigned long REG_FIELD (int,int ,int ,int) ;
 int RW_MM_TLB_HI ;
 int SUPP_BANK_SEL (int) ;
 int SUPP_REG_RD (int ,unsigned long) ;
 int UPDATE_TLB_HILO (unsigned long,int ) ;
 int UPDATE_TLB_SEL_IDX (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pid ;
 int rw_mm_tlb_hi ;
 int vpn ;

void
__flush_tlb_mm(struct mm_struct *mm)
{
 int i;
 int mmu;
 unsigned long flags;
 unsigned long page_id;
 unsigned long tlb_hi;
 unsigned long mmu_tlb_hi;

 page_id = mm->context.page_id;

 if (page_id == NO_CONTEXT)
  return;


 local_irq_save(flags);

 for (mmu = 1; mmu <= 2; mmu++) {
  SUPP_BANK_SEL(mmu);
  for (i = 0; i < NUM_TLB_ENTRIES; i++) {
   UPDATE_TLB_SEL_IDX(i);


   SUPP_REG_RD(RW_MM_TLB_HI, tlb_hi);


   if ((tlb_hi & 0xff) == page_id) {
    mmu_tlb_hi = (REG_FIELD(mmu, rw_mm_tlb_hi, pid,
                            INVALID_PAGEID)
                | REG_FIELD(mmu, rw_mm_tlb_hi, vpn,
                            i & 0xf));

    UPDATE_TLB_HILO(mmu_tlb_hi, 0);
   }
  }
 }

 local_irq_restore(flags);
}
