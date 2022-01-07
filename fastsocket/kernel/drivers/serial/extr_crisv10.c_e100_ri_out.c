
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e100_serial {size_t line; } ;
struct TYPE_2__ {unsigned char ri_mask; unsigned char* ri_shadow; unsigned char* ri_port; } ;


 TYPE_1__* e100_modem_pins ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static inline void
e100_ri_out(struct e100_serial *info, int set)
{


 {
  unsigned char mask = e100_modem_pins[info->line].ri_mask;
  unsigned long flags;

  local_irq_save(flags);
  *e100_modem_pins[info->line].ri_shadow &= ~mask;
  *e100_modem_pins[info->line].ri_shadow |= (set ? 0 : mask);
  *e100_modem_pins[info->line].ri_port = *e100_modem_pins[info->line].ri_shadow;
  local_irq_restore(flags);
 }

}
