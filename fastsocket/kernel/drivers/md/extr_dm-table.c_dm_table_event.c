
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int event_context; int (* event_fn ) (int ) ;} ;


 int BUG_ON (int ) ;
 int _event_lock ;
 int in_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;

void dm_table_event(struct dm_table *t)
{




 BUG_ON(in_interrupt());

 mutex_lock(&_event_lock);
 if (t->event_fn)
  t->event_fn(t->event_context);
 mutex_unlock(&_event_lock);
}
