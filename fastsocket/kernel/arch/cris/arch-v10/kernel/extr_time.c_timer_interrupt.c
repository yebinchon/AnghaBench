
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ tv_sec; int tv_nsec; } ;


 int IO_FIELD (int*,int ,int ) ;
 int IO_STATE (int*,int ,int ) ;
 int IRQ_HANDLED ;
 int* R_TIMER_CTRL ;
 int c6250kHz ;
 int cascade0 ;
 int clksel0 ;
 int clksel1 ;
 int clr ;
 int cris_do_profile (struct pt_regs*) ;
 int do_timer (int) ;
 struct pt_regs* get_irq_regs () ;
 int i0 ;
 int i1 ;
 scalar_t__ last_rtc_update ;
 scalar_t__ ntp_synced () ;
 int r_timer_ctrl_shadow ;
 int reset_watchdog () ;
 int run ;
 scalar_t__ set_rtc_mmss (scalar_t__) ;
 int tick_nsec ;
 int timerdiv0 ;
 int timerdiv1 ;
 int tm0 ;
 int tm1 ;
 int update_process_times (int ) ;
 int user_mode (struct pt_regs*) ;
 TYPE_1__ xtime ;

__attribute__((used)) static inline irqreturn_t
timer_interrupt(int irq, void *dev_id)
{
 struct pt_regs *regs = get_irq_regs();
 *R_TIMER_CTRL = r_timer_ctrl_shadow |
  IO_STATE(R_TIMER_CTRL, i0, clr);



 reset_watchdog();


 update_process_times(user_mode(regs));



 do_timer(1);

        cris_do_profile(regs);
 if (ntp_synced() &&
     xtime.tv_sec > last_rtc_update + 660 &&
     (xtime.tv_nsec / 1000) >= 500000 - (tick_nsec / 1000) / 2 &&
     (xtime.tv_nsec / 1000) <= 500000 + (tick_nsec / 1000) / 2) {
  if (set_rtc_mmss(xtime.tv_sec) == 0)
   last_rtc_update = xtime.tv_sec;
  else
   last_rtc_update = xtime.tv_sec - 600;
 }
        return IRQ_HANDLED;
}
