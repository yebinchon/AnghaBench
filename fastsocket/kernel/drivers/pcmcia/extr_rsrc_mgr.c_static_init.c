
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int resource_setup_done; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int static_init(struct pcmcia_socket *s)
{
 unsigned long flags;




 spin_lock_irqsave(&s->lock, flags);
 s->resource_setup_done = 1;
 spin_unlock_irqrestore(&s->lock, flags);

 return 0;
}
