
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {void (* event_fn ) (void*) ;void* event_context; } ;


 int _event_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dm_table_event_callback(struct dm_table *t,
        void (*fn)(void *), void *context)
{
 mutex_lock(&_event_lock);
 t->event_fn = fn;
 t->event_context = context;
 mutex_unlock(&_event_lock);
}
