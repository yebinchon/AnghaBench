
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct chan {int fd; scalar_t__ opened; int data; TYPE_3__* ops; scalar_t__ enabled; TYPE_2__* line; scalar_t__ output; scalar_t__ input; int free_list; } ;
struct TYPE_6__ {int (* close ) (int,int ) ;} ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int write_irq; int read_irq; } ;


 int free_irq (int ,struct chan*) ;
 int irqs_to_free ;
 int irqs_to_free_lock ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,int ) ;

__attribute__((used)) static void close_one_chan(struct chan *chan, int delay_free_irq)
{
 unsigned long flags;

 if (!chan->opened)
  return;

 if (delay_free_irq) {
  spin_lock_irqsave(&irqs_to_free_lock, flags);
  list_add(&chan->free_list, &irqs_to_free);
  spin_unlock_irqrestore(&irqs_to_free_lock, flags);
 }
 else {
  if (chan->input)
   free_irq(chan->line->driver->read_irq, chan);
  if (chan->output)
   free_irq(chan->line->driver->write_irq, chan);
  chan->enabled = 0;
 }
 if (chan->ops->close != ((void*)0))
  (*chan->ops->close)(chan->fd, chan->data);

 chan->opened = 0;
 chan->fd = -1;
}
