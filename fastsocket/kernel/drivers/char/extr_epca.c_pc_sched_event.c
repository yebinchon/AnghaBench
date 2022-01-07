
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int event; int tqueue; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void pc_sched_event(struct channel *ch, int event)
{




 ch->event |= 1 << event;
 schedule_work(&ch->tqueue);
}
