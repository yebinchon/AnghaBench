
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_event_entry (unsigned long) ;
 int buffer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void oprofile_put_buff(unsigned long *buf, unsigned int start,
         unsigned int stop, unsigned int max)
{
 int i;

 i = start;

 mutex_lock(&buffer_mutex);
 while (i != stop) {
  add_event_entry(buf[i++]);

  if (i >= max)
   i = 0;
 }

 mutex_unlock(&buffer_mutex);
}
