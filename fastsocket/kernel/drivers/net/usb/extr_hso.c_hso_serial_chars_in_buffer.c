
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct hso_serial {int tx_buffer_count; int serial_lock; } ;


 struct hso_serial* get_serial_by_tty (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hso_serial_chars_in_buffer(struct tty_struct *tty)
{
 struct hso_serial *serial = get_serial_by_tty(tty);
 int chars;
 unsigned long flags;


 if (serial == ((void*)0))
  return 0;

 spin_lock_irqsave(&serial->serial_lock, flags);
 chars = serial->tx_buffer_count;
 spin_unlock_irqrestore(&serial->serial_lock, flags);

 return chars;
}
