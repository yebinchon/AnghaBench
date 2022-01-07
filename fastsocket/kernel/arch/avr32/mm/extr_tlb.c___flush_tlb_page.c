
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRP ;
 int MMUCR ;
 int MMUCR_N ;
 unsigned int SYSREG_BFEXT (int ,int) ;
 int SYSREG_BIT (int ) ;
 int TLBARLO ;
 int TLBEHI ;
 int __builtin_tlbs () ;
 int __builtin_tlbw () ;
 int sysreg_read (int ) ;
 int sysreg_write (int ,int) ;

__attribute__((used)) static void __flush_tlb_page(unsigned long asid, unsigned long page)
{
 u32 mmucr, tlbehi;






 tlbehi = page | asid;
 sysreg_write(TLBEHI, tlbehi);

 __builtin_tlbs();
 mmucr = sysreg_read(MMUCR);

 if (!(mmucr & SYSREG_BIT(MMUCR_N))) {
  unsigned int entry;
  u32 tlbarlo;


  sysreg_write(TLBEHI, tlbehi);


  entry = SYSREG_BFEXT(DRP, mmucr);
  tlbarlo = sysreg_read(TLBARLO);
  tlbarlo |= (0x80000000UL >> entry);
  sysreg_write(TLBARLO, tlbarlo);


  __builtin_tlbw();
 }
}
