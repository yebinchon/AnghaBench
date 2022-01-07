
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_event {struct pending_event* next; } ;


 struct pending_event* pending_event_avail ;

__attribute__((used)) static void free_pending_event(struct pending_event *ev)
{
 if (ev != ((void*)0)) {
  ev->next = pending_event_avail;
  pending_event_avail = ev;
 }
}
