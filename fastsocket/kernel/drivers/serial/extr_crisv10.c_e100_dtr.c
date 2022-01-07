
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e100_serial {size_t line; } ;
struct TYPE_2__ {unsigned char dtr_mask; int* dtr_shadow; unsigned char* dtr_port; } ;


 unsigned char E100_DTR_GET (struct e100_serial*) ;
 TYPE_1__* e100_modem_pins ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,size_t,int,unsigned char) ;

__attribute__((used)) static inline void
e100_dtr(struct e100_serial *info, int set)
{

 unsigned char mask = e100_modem_pins[info->line].dtr_mask;
 {
  unsigned long flags;

  local_irq_save(flags);
  *e100_modem_pins[info->line].dtr_shadow &= ~mask;
  *e100_modem_pins[info->line].dtr_shadow |= (set ? 0 : mask);
  *e100_modem_pins[info->line].dtr_port = *e100_modem_pins[info->line].dtr_shadow;
  local_irq_restore(flags);
 }







}
