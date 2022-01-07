
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT91_SDRAMC_LPCB ;
 int AT91_SDRAMC_LPCB_SELF_REFRESH ;
 int AT91_SDRAMC_LPR ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,int) ;
 int saved_lpr ;

__attribute__((used)) static inline void sdram_selfrefresh_enable(void)
{
 u32 lpr;

 saved_lpr = at91_sys_read(AT91_SDRAMC_LPR);

 lpr = saved_lpr & ~AT91_SDRAMC_LPCB;
 at91_sys_write(AT91_SDRAMC_LPR, lpr | AT91_SDRAMC_LPCB_SELF_REFRESH);
}
