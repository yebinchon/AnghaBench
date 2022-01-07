
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct hso_serial {int tx_data_length; int tx_buffer_count; int serial_lock; } ;


 struct hso_serial* get_serial_by_tty (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hso_serial_write_room(struct tty_struct *tty)
{
 struct hso_serial *serial = get_serial_by_tty(tty);
 int room;
 unsigned long flags;

 spin_lock_irqsave(&serial->serial_lock, flags);
 room = serial->tx_data_length - serial->tx_buffer_count;
 spin_unlock_irqrestore(&serial->serial_lock, flags);


 return room;
}
