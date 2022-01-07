
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AP ;
 int ASID ;
 int B ;
 int DRP ;
 int G ;
 int MMUCR ;
 int PFN ;
 int SYSREG_BFEXT (int ,int ) ;
 int SYSREG_BFINS (int ,unsigned int,int ) ;
 int SZ ;
 int TLBEHI ;
 int TLBEHI_V ;
 int TLBELO ;
 int TLBELO_C ;
 int TLBELO_D ;
 int VPN ;
 int W ;
 int __builtin_tlbr () ;
 int cpu_sync_pipeline () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,unsigned int,char,char,int,int,int,int,int,char,char,char,char) ;
 int sysreg_read (int ) ;
 int sysreg_write (int ,int ) ;

__attribute__((used)) static void show_dtlb_entry(unsigned int index)
{
 u32 tlbehi, tlbehi_save, tlbelo, mmucr, mmucr_save;
 unsigned long flags;

 local_irq_save(flags);
 mmucr_save = sysreg_read(MMUCR);
 tlbehi_save = sysreg_read(TLBEHI);
 mmucr = SYSREG_BFINS(DRP, index, mmucr_save);
 sysreg_write(MMUCR, mmucr);

 __builtin_tlbr();
 cpu_sync_pipeline();

 tlbehi = sysreg_read(TLBEHI);
 tlbelo = sysreg_read(TLBELO);

 printk("%2u: %c %c %02x   %05x %05x %o  %o  %c %c %c %c\n",
        index,
        SYSREG_BFEXT(TLBEHI_V, tlbehi) ? '1' : '0',
        SYSREG_BFEXT(G, tlbelo) ? '1' : '0',
        SYSREG_BFEXT(ASID, tlbehi),
        SYSREG_BFEXT(VPN, tlbehi) >> 2,
        SYSREG_BFEXT(PFN, tlbelo) >> 2,
        SYSREG_BFEXT(AP, tlbelo),
        SYSREG_BFEXT(SZ, tlbelo),
        SYSREG_BFEXT(TLBELO_C, tlbelo) ? 'C' : ' ',
        SYSREG_BFEXT(B, tlbelo) ? 'B' : ' ',
        SYSREG_BFEXT(W, tlbelo) ? 'W' : ' ',
        SYSREG_BFEXT(TLBELO_D, tlbelo) ? 'D' : ' ');

 sysreg_write(MMUCR, mmucr_save);
 sysreg_write(TLBEHI, tlbehi_save);
 cpu_sync_pipeline();
 local_irq_restore(flags);
}
