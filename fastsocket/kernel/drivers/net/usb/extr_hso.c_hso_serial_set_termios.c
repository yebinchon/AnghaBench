
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ktermios* termios; } ;
struct ktermios {int c_cflag; } ;
struct hso_serial {int serial_lock; scalar_t__ open_count; } ;


 int D5 (char*,int ,int ) ;
 int _hso_serial_set_termios (struct tty_struct*,struct ktermios*) ;
 struct hso_serial* get_serial_by_tty (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hso_serial_set_termios(struct tty_struct *tty, struct ktermios *old)
{
 struct hso_serial *serial = get_serial_by_tty(tty);
 unsigned long flags;

 if (old)
  D5("Termios called with: cflags new[%d] - old[%d]",
     tty->termios->c_cflag, old->c_cflag);


 spin_lock_irqsave(&serial->serial_lock, flags);
 if (serial->open_count)
  _hso_serial_set_termios(tty, old);
 else
  tty->termios = old;
 spin_unlock_irqrestore(&serial->serial_lock, flags);


 return;
}
