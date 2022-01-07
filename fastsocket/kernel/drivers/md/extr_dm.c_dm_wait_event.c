
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int event_nr; int eventq; } ;


 int atomic_read (int *) ;
 int wait_event_interruptible (int ,int) ;

int dm_wait_event(struct mapped_device *md, int event_nr)
{
 return wait_event_interruptible(md->eventq,
   (event_nr != atomic_read(&md->event_nr)));
}
