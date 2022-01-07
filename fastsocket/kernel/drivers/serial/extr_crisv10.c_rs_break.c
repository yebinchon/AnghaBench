
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct e100_serial {int* ioport; int tx_ctrl; } ;


 int EIO ;
 size_t REG_TR_CTRL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int
rs_break(struct tty_struct *tty, int break_state)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 unsigned long flags;

 if (!info->ioport)
  return -EIO;

 local_irq_save(flags);
 if (break_state == -1) {


  info->tx_ctrl &= 0x3F;
 } else {

  info->tx_ctrl |= (0x80 | 0x40);
 }
 info->ioport[REG_TR_CTRL] = info->tx_ctrl;
 local_irq_restore(flags);
 return 0;
}
