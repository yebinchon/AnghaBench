
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct async_struct* driver_data; } ;
struct async_struct {int IER; } ;
struct TYPE_2__ {void* intreq; void* intena; } ;


 void* IF_TBE ;
 int UART_IER_THRI ;
 TYPE_1__ custom ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int ,char*) ;

__attribute__((used)) static void rs_stop(struct tty_struct *tty)
{
 struct async_struct *info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_stop"))
  return;

 local_irq_save(flags);
 if (info->IER & UART_IER_THRI) {
  info->IER &= ~UART_IER_THRI;

  custom.intena = IF_TBE;
  mb();
  custom.intreq = IF_TBE;
  mb();
 }
 local_irq_restore(flags);
}
