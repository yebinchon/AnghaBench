
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ab3100 {int startup_events; int startup_events_read; } ;


 int EAGAIN ;

int ab3100_event_registers_startup_state_get(struct ab3100 *ab3100,
          u32 *fatevent)
{
 if (!ab3100->startup_events_read)
  return -EAGAIN;
 *fatevent = ab3100->startup_events;
 return 0;
}
