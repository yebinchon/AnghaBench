
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_event {int dummy; } ;


 int kfree (struct nouveau_event*) ;

void
nouveau_event_destroy(struct nouveau_event **pevent)
{
 struct nouveau_event *event = *pevent;
 if (event) {
  kfree(event);
  *pevent = ((void*)0);
 }
}
