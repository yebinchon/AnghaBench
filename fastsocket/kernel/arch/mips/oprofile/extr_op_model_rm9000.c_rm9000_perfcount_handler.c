
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct pt_regs {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int reset_counter1; int reset_counter2; int control; } ;


 int IRQ_HANDLED ;
 unsigned int RM9K_COUNTER1_OVERFLOW ;
 unsigned int RM9K_COUNTER2_OVERFLOW ;
 struct pt_regs* get_irq_regs () ;
 int oprofile_add_sample (struct pt_regs*,int) ;
 unsigned int read_c0_perfcontrol () ;
 int read_c0_perfcount () ;
 TYPE_1__ reg ;
 int write_c0_perfcontrol (int ) ;
 int write_c0_perfcount (int) ;

__attribute__((used)) static irqreturn_t rm9000_perfcount_handler(int irq, void *dev_id)
{
 unsigned int control = read_c0_perfcontrol();
 struct pt_regs *regs = get_irq_regs();
 uint32_t counter1, counter2;
 uint64_t counters;







 write_c0_perfcontrol(0);

 counters = read_c0_perfcount();
 counter1 = counters;
 counter2 = counters >> 32;

 if (control & RM9K_COUNTER1_OVERFLOW) {
  oprofile_add_sample(regs, 0);
  counter1 = reg.reset_counter1;
 }
 if (control & RM9K_COUNTER2_OVERFLOW) {
  oprofile_add_sample(regs, 1);
  counter2 = reg.reset_counter2;
 }

 counters = ((uint64_t)counter2 << 32) | counter1;
 write_c0_perfcount(counters);
 write_c0_perfcontrol(reg.control);

 return IRQ_HANDLED;
}
