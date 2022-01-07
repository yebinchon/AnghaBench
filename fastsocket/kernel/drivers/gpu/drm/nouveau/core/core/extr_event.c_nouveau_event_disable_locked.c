
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_event {int index_nr; int (* disable ) (struct nouveau_event*,int) ;TYPE_1__* index; } ;
struct TYPE_2__ {scalar_t__ refs; } ;


 int stub1 (struct nouveau_event*,int) ;

void
nouveau_event_disable_locked(struct nouveau_event *event, int index, int refs)
{
 if (index >= event->index_nr)
  return;

 event->index[index].refs -= refs;
 if (!event->index[index].refs && event->disable)
  event->disable(event, index);
}
