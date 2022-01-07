
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int CSYNC () ;
 int TMPWR ;
 int TMREN ;
 int bfin_write_TCNTL (int) ;
 int bfin_write_TCOUNT (unsigned long) ;

__attribute__((used)) static int bfin_timer_set_next_event(unsigned long cycles,
    struct clock_event_device *evt)
{
 bfin_write_TCNTL(TMPWR);
 CSYNC();
 bfin_write_TCOUNT(cycles);
 CSYNC();
 bfin_write_TCNTL(TMPWR | TMREN);
 return 0;
}
