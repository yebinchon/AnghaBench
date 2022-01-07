
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 int FRQCR ;
 int FRQCR_PLLEN ;
 int FRQCR_PSTBY ;
 int GFP_ATOMIC ;
 scalar_t__ INTR_OFFSET ;
 int MCR ;
 int MCR_RFSH ;
 int MCR_RMODE ;
 int RTCNT ;
 int STBCR ;
 int STBCR_MSTP2 ;
 int STBCR_STBY ;
 int WTCSR_CKS_4096 ;
 int WTCSR_TME ;
 int clear_bl_bit () ;
 int cpu_sleep () ;
 int ctrl_inb (int ) ;
 int ctrl_inw (int ) ;
 int ctrl_outb (int,int ) ;
 int ctrl_outw (int,int ) ;
 int free_page (scalar_t__) ;
 scalar_t__ get_zeroed_page (int ) ;
 int memcpy (void*,int *,int) ;
 int set_bl_bit () ;
 int sh_wdt_read_csr () ;
 int sh_wdt_write_cnt (int ) ;
 int sh_wdt_write_csr (int) ;
 int udelay (int) ;
 int wakeup_end ;
 int wakeup_start ;

__attribute__((used)) static void pm_enter(void)
{
 u8 stbcr, csr;
 u16 frqcr, mcr;
 u32 vbr_new, vbr_old;

 set_bl_bit();


 csr = sh_wdt_read_csr();
 csr &= ~WTCSR_TME;
 csr |= WTCSR_CKS_4096;
 sh_wdt_write_csr(csr);
 csr = sh_wdt_read_csr();
 sh_wdt_write_cnt(0);


 frqcr = ctrl_inw(FRQCR);
 frqcr &= ~(FRQCR_PLLEN | FRQCR_PSTBY);
 ctrl_outw(frqcr, FRQCR);


 stbcr = ctrl_inb(STBCR);
 ctrl_outb(stbcr | STBCR_STBY | STBCR_MSTP2, STBCR);


 mcr = ctrl_inw(MCR);
 ctrl_outw(mcr & ~MCR_RFSH, MCR);


 asm volatile("stc vbr, %0" : "=r" (vbr_old));
 vbr_new = get_zeroed_page(GFP_ATOMIC);
 udelay(50);
 memcpy((void*)(vbr_new + INTR_OFFSET),
        &wakeup_start, &wakeup_end - &wakeup_start);
 asm volatile("ldc %0, vbr" : : "r" (vbr_new));

 ctrl_outw(0, RTCNT);
 ctrl_outw(mcr | MCR_RFSH | MCR_RMODE, MCR);

 cpu_sleep();

 asm volatile("ldc %0, vbr" : : "r" (vbr_old));

 free_page(vbr_new);


 frqcr = ctrl_inw(FRQCR);
 frqcr |= FRQCR_PSTBY;
 ctrl_outw(frqcr, FRQCR);
 udelay(50);
 frqcr |= FRQCR_PLLEN;
 ctrl_outw(frqcr, FRQCR);

 ctrl_outb(stbcr, STBCR);

 clear_bl_bit();
}
