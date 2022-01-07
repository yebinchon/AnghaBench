
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int AT91_AIC_IMR ;
 int AT91_AIC_IPR ;
 int AT91_ID_FIQ ;
 int AT91_ID_SYS ;
 int AT91_PMC_PCSR ;



 int at91_extern_irq ;
 int at91_gpio_resume () ;
 int at91_gpio_suspend () ;
 int at91_irq_resume () ;
 int at91_irq_suspend () ;
 int at91_pm_verify_clocks () ;
 int at91_slow_clock ;
 int at91_slow_clock_sz ;
 int at91_sys_read (int ) ;
 int memcpy (int (*) (),int ,int ) ;
 int pr_debug (char*,int,...) ;
 int pr_info (char*) ;
 int sdram_selfrefresh_disable () ;
 int sdram_selfrefresh_enable () ;
 int slow_clock () ;
 int target_state ;

__attribute__((used)) static int at91_pm_enter(suspend_state_t state)
{
 at91_gpio_suspend();
 at91_irq_suspend();

 pr_debug("AT91: PM - wake mask %08x, pm state %d\n",

   (at91_sys_read(AT91_PMC_PCSR)
     | (1 << AT91_ID_FIQ)
     | (1 << AT91_ID_SYS)
     | (at91_extern_irq))
    & at91_sys_read(AT91_AIC_IMR),
   state);

 switch (state) {





  case 130:



   if (!at91_pm_verify_clocks())
    goto error;





   if (slow_clock) {




    slow_clock();
    break;
   } else {
    pr_info("AT91: PM - no slow clock mode enabled ...\n");

   }







  case 128:





   asm("b 1f; .align 5; 1:");
   asm("mcr p15, 0, r0, c7, c10, 4");
   sdram_selfrefresh_enable();
   asm("mcr p15, 0, r0, c7, c0, 4");
   sdram_selfrefresh_disable();
   break;

  case 129:
   asm("mcr p15, 0, r0, c7, c0, 4");
   break;

  default:
   pr_debug("AT91: PM - bogus suspend state %d\n", state);
   goto error;
 }

 pr_debug("AT91: PM - wakeup %08x\n",
   at91_sys_read(AT91_AIC_IPR) & at91_sys_read(AT91_AIC_IMR));

error:
 target_state = 129;
 at91_irq_resume();
 at91_gpio_resume();
 return 0;
}
