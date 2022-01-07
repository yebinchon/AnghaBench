
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_lost_overflow; } ;


 int WARN_ON_ONCE (int) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 size_t buffer_pos ;
 int buffer_ready ;
 size_t buffer_size ;
 int buffer_wait ;
 size_t buffer_watershed ;
 unsigned long* event_buffer ;
 TYPE_1__ oprofile_stats ;
 int wake_up (int *) ;

void add_event_entry(unsigned long value)
{




 if (!event_buffer) {
  WARN_ON_ONCE(1);
  return;
 }

 if (buffer_pos == buffer_size) {
  atomic_inc(&oprofile_stats.event_lost_overflow);
  return;
 }

 event_buffer[buffer_pos] = value;
 if (++buffer_pos == buffer_size - buffer_watershed) {
  atomic_set(&buffer_ready, 1);
  wake_up(&buffer_wait);
 }
}
