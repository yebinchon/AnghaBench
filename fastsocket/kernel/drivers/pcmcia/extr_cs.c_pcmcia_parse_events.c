
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcmcia_socket {scalar_t__ thread; int thread_lock; int thread_events; } ;


 int cs_dbg (struct pcmcia_socket*,int,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (scalar_t__) ;

void pcmcia_parse_events(struct pcmcia_socket *s, u_int events)
{
 unsigned long flags;
 cs_dbg(s, 4, "parse_events: events %08x\n", events);
 if (s->thread) {
  spin_lock_irqsave(&s->thread_lock, flags);
  s->thread_events |= events;
  spin_unlock_irqrestore(&s->thread_lock, flags);

  wake_up_process(s->thread);
 }
}
