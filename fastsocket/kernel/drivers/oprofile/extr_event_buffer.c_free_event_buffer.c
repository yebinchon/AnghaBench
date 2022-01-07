
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_mutex ;
 scalar_t__ buffer_pos ;
 int * event_buffer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (int *) ;

void free_event_buffer(void)
{
 mutex_lock(&buffer_mutex);
 vfree(event_buffer);
 buffer_pos = 0;
 event_buffer = ((void*)0);
 mutex_unlock(&buffer_mutex);
}
