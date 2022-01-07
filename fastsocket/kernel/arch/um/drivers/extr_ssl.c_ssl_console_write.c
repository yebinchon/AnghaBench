
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int lock; int chan_list; } ;
struct console {size_t index; } ;


 int console_write_chan (int *,char const*,unsigned int) ;
 struct line* serial_lines ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ssl_console_write(struct console *c, const char *string,
         unsigned len)
{
 struct line *line = &serial_lines[c->index];
 unsigned long flags;

 spin_lock_irqsave(&line->lock, flags);
 console_write_chan(&line->chan_list, string, len);
 spin_unlock_irqrestore(&line->lock, flags);
}
