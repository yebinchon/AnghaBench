
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int pte_t ;


 int ASID ;
 int DRP ;
 int MMUCR ;
 int MMUCR_N ;
 unsigned long MMU_VPN_MASK ;
 unsigned long SYSREG_BF (int ,int ) ;
 int SYSREG_BFEXT (int ,unsigned long) ;
 unsigned long SYSREG_BFINS (int ,unsigned int,unsigned long) ;
 unsigned long SYSREG_BIT (int ) ;
 int TLBARLO ;
 int TLBEHI ;
 int TLBEHI_V ;
 int TLBELO ;
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ;
 int __builtin_tlbs () ;
 int __builtin_tlbw () ;
 int fls (unsigned long) ;
 unsigned long pte_val (int ) ;
 unsigned long sysreg_read (int ) ;
 int sysreg_write (int ,unsigned long) ;

__attribute__((used)) static void update_dtlb(unsigned long address, pte_t pte)
{
 u32 tlbehi;
 u32 mmucr;





 tlbehi = sysreg_read(TLBEHI);
 tlbehi = SYSREG_BF(ASID, SYSREG_BFEXT(ASID, tlbehi));
 tlbehi |= address & MMU_VPN_MASK;
 tlbehi |= SYSREG_BIT(TLBEHI_V);
 sysreg_write(TLBEHI, tlbehi);


 __builtin_tlbs();
 mmucr = sysreg_read(MMUCR);

 if (mmucr & SYSREG_BIT(MMUCR_N)) {

  unsigned int rp;
  u32 tlbar = sysreg_read(TLBARLO);

  rp = 32 - fls(tlbar);
  if (rp == 32) {
   rp = 0;
   sysreg_write(TLBARLO, -1L);
  }

  mmucr = SYSREG_BFINS(DRP, rp, mmucr);
  sysreg_write(MMUCR, mmucr);
 }

 sysreg_write(TLBELO, pte_val(pte) & _PAGE_FLAGS_HARDWARE_MASK);


 __builtin_tlbw();
}
