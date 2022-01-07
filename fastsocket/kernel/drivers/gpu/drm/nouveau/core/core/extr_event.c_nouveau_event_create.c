
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_event {int index_nr; TYPE_1__* index; int lock; } ;
struct TYPE_2__ {int list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nouveau_event* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int
nouveau_event_create(int index_nr, struct nouveau_event **pevent)
{
 struct nouveau_event *event;
 int i;

 event = *pevent = kzalloc(sizeof(*event) + index_nr *
      sizeof(event->index[0]), GFP_KERNEL);
 if (!event)
  return -ENOMEM;

 spin_lock_init(&event->lock);
 for (i = 0; i < index_nr; i++)
  INIT_LIST_HEAD(&event->index[i].list);
 event->index_nr = index_nr;
 return 0;
}
