
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk {int dummy; } ;


 int AT91_CKGR_PLLBR ;
 int AT91_PMC_LOCKB ;
 int AT91_PMC_SR ;
 scalar_t__ at91_pllb_usb_init ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,scalar_t__) ;
 int cpu_relax () ;

__attribute__((used)) static void pllb_mode(struct clk *clk, int is_on)
{
 u32 value;

 if (is_on) {
  is_on = AT91_PMC_LOCKB;
  value = at91_pllb_usb_init;
 } else
  value = 0;


 at91_sys_write(AT91_CKGR_PLLBR, value);

 do {
  cpu_relax();
 } while ((at91_sys_read(AT91_PMC_SR) & AT91_PMC_LOCKB) != is_on);
}
