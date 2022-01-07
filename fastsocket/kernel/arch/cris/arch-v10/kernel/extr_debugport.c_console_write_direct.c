
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct console {int dummy; } ;
struct TYPE_2__ {int* read; char* write; } ;


 int IO_MASK (int ,int ) ;
 int R_SERIAL0_READ ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* port ;
 int reset_watchdog () ;
 int tr_ready ;

__attribute__((used)) static void
console_write_direct(struct console *co, const char *buf, unsigned int len)
{
 int i;
 unsigned long flags;

        if (!port)
  return;

 local_irq_save(flags);


 for (i = 0; i < len; i++) {

  if (buf[i] == '\n') {
   while (!(*port->read & IO_MASK(R_SERIAL0_READ, tr_ready)))
   ;
   *port->write = '\r';
  }

  while (!(*port->read & IO_MASK(R_SERIAL0_READ, tr_ready)))
   ;
  *port->write = buf[i];
 }







 reset_watchdog();

 local_irq_restore(flags);
}
