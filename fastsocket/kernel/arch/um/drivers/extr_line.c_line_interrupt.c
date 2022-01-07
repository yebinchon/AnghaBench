
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct line {int task; int chan_list; struct tty_struct* tty; } ;
struct chan {struct line* line; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int chan_interrupt (int *,int *,struct tty_struct*,int) ;

__attribute__((used)) static irqreturn_t line_interrupt(int irq, void *data)
{
 struct chan *chan = data;
 struct line *line = chan->line;
 struct tty_struct *tty = line->tty;

 if (line)
  chan_interrupt(&line->chan_list, &line->task, tty, irq);
 return IRQ_HANDLED;
}
