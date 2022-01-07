
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int dbg (char*,unsigned char) ;
 int i8042_lock ;
 int i8042_wait_write () ;
 int i8042_write_data (unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int i8042_kbd_write(struct serio *port, unsigned char c)
{
 unsigned long flags;
 int retval = 0;

 spin_lock_irqsave(&i8042_lock, flags);

 if (!(retval = i8042_wait_write())) {
  dbg("%02x -> i8042 (kbd-data)", c);
  i8042_write_data(c);
 }

 spin_unlock_irqrestore(&i8042_lock, flags);

 return retval;
}
