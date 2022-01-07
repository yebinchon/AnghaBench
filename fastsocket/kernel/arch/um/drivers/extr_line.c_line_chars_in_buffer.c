
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct line* driver_data; } ;
struct line {int lock; } ;


 int LINE_BUFSIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_room (struct line*) ;

int line_chars_in_buffer(struct tty_struct *tty)
{
 struct line *line = tty->driver_data;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&line->lock, flags);

 ret = LINE_BUFSIZE - (write_room(line) + 1);
 spin_unlock_irqrestore(&line->lock, flags);

 return ret;
}
