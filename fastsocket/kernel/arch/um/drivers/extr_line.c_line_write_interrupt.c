
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct line {int lock; int buffer; int tail; int head; struct tty_struct* tty; } ;
struct chan {struct line* line; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int flush_buffer (struct line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static irqreturn_t line_write_interrupt(int irq, void *data)
{
 struct chan *chan = data;
 struct line *line = chan->line;
 struct tty_struct *tty = line->tty;
 int err;






 spin_lock(&line->lock);
 err = flush_buffer(line);
 if (err == 0) {
  return IRQ_NONE;
 } else if (err < 0) {
  line->head = line->buffer;
  line->tail = line->buffer;
 }
 spin_unlock(&line->lock);

 if (tty == ((void*)0))
  return IRQ_NONE;

 tty_wakeup(tty);
 return IRQ_HANDLED;
}
