
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_6__ {int tmr0; int member_0; } ;
typedef TYPE_1__ reg_timer_rw_ack_intr ;
struct TYPE_7__ {int tmr0; } ;
typedef TYPE_2__ reg_timer_r_masked_intr ;
typedef int irqreturn_t ;
struct TYPE_8__ {scalar_t__ tv_sec; int tv_nsec; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_2__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int STA_UNSYNC ;
 int cris_do_profile (struct pt_regs*) ;
 int do_timer (int) ;
 struct pt_regs* get_irq_regs () ;
 scalar_t__ last_rtc_update ;
 int r_masked_intr ;
 int reset_watchdog () ;
 int rw_ack_intr ;
 scalar_t__ set_rtc_mmss (scalar_t__) ;
 int smp_processor_id () ;
 int tick_nsec ;
 int time_status ;
 int timer ;
 int * timer_regs ;
 int update_process_times (int ) ;
 int user_mode (struct pt_regs*) ;
 TYPE_3__ xtime ;

__attribute__((used)) static inline irqreturn_t
timer_interrupt(int irq, void *dev_id)
{
 struct pt_regs *regs = get_irq_regs();
 int cpu = smp_processor_id();
 reg_timer_r_masked_intr masked_intr;
 reg_timer_rw_ack_intr ack_intr = { 0 };


 masked_intr = REG_RD(timer, timer_regs[cpu], r_masked_intr);
 if (!masked_intr.tmr0)
  return IRQ_NONE;


 ack_intr.tmr0 = 1;
 REG_WR(timer, timer_regs[cpu], rw_ack_intr, ack_intr);


 reset_watchdog();


 update_process_times(user_mode(regs));

 cris_do_profile(regs);


 if (cpu != 0)
  return IRQ_HANDLED;


 do_timer(1);
 if ((time_status & STA_UNSYNC) == 0 &&
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
