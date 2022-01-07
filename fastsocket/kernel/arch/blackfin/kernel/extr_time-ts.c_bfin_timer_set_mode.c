
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int CSYNC () ;
 int HZ ;
 int TAUTORLD ;
 int TIME_SCALE ;
 int TMPWR ;
 int TMREN ;
 int bfin_write_TCNTL (int) ;
 int bfin_write_TCOUNT (unsigned long) ;
 int bfin_write_TPERIOD (unsigned long) ;
 int bfin_write_TSCALE (int ) ;
 int get_cclk () ;

__attribute__((used)) static void bfin_timer_set_mode(enum clock_event_mode mode,
    struct clock_event_device *evt)
{
 switch (mode) {
 case 131: {
  unsigned long tcount = ((get_cclk() / (HZ * TIME_SCALE)) - 1);
  bfin_write_TCNTL(TMPWR);
  CSYNC();
  bfin_write_TSCALE(TIME_SCALE - 1);
  bfin_write_TPERIOD(tcount);
  bfin_write_TCOUNT(tcount);
  CSYNC();
  bfin_write_TCNTL(TMPWR | TMREN | TAUTORLD);
  break;
 }
 case 132:
  bfin_write_TCNTL(TMPWR);
  CSYNC();
  bfin_write_TSCALE(TIME_SCALE - 1);
  bfin_write_TPERIOD(0);
  bfin_write_TCOUNT(0);
  break;
 case 128:
 case 129:
  bfin_write_TCNTL(0);
  CSYNC();
  break;
 case 130:
  break;
 }
}
