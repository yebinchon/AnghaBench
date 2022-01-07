
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chan {int fd; scalar_t__ output; scalar_t__ primary; int data; TYPE_1__* ops; int list; } ;
struct TYPE_2__ {int (* free ) (int ) ;} ;


 int close_one_chan (struct chan*,int) ;
 int ignore_sigio_fd (int ) ;
 int kfree (struct chan*) ;
 int list_del (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void free_one_chan(struct chan *chan, int delay_free_irq)
{
 list_del(&chan->list);

 close_one_chan(chan, delay_free_irq);

 if (chan->ops->free != ((void*)0))
  (*chan->ops->free)(chan->data);

 if (chan->primary && chan->output)
  ignore_sigio_fd(chan->fd);
 kfree(chan);
}
