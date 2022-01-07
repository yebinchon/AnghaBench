
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int statusflags; } ;


 int EMPTYWAIT ;
 int MoxaPortTxQueue (struct moxa_port*) ;
 int lock_kernel () ;
 int moxa_setup_empty_event (struct tty_struct*) ;
 int unlock_kernel () ;

__attribute__((used)) static int moxa_chars_in_buffer(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;
 int chars;







 if (ch == ((void*)0))
  return 0;
 lock_kernel();
 chars = MoxaPortTxQueue(ch);
 if (chars) {




  if (!(ch->statusflags & EMPTYWAIT))
   moxa_setup_empty_event(tty);
 }
 unlock_kernel();
 return chars;
}
