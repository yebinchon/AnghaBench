
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct line* driver_data; } ;
struct line {TYPE_1__* driver; int chan_list; scalar_t__ throttled; int task; } ;
struct TYPE_2__ {int read_irq; } ;


 int chan_interrupt (int *,int *,struct tty_struct*,int ) ;
 int reactivate_chan (int *,int ) ;

void line_unthrottle(struct tty_struct *tty)
{
 struct line *line = tty->driver_data;

 line->throttled = 0;
 chan_interrupt(&line->chan_list, &line->task, tty,
         line->driver->read_irq);






 if (!line->throttled)
  reactivate_chan(&line->chan_list, line->driver->read_irq);
}
