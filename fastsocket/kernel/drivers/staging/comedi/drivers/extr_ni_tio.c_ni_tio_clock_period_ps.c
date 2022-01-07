
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ni_gpct {int clock_period_ps; } ;


 int BUG () ;
 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ;

 unsigned int NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK ;







__attribute__((used)) static uint64_t ni_tio_clock_period_ps(const struct ni_gpct *counter,
           unsigned generic_clock_source)
{
 uint64_t clock_period_ps;

 switch (generic_clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK) {
 case 130:
  clock_period_ps = 50000;
  break;
 case 129:
  clock_period_ps = 10000000;
  break;
 case 128:
  clock_period_ps = 12500;
  break;
 case 131:
  clock_period_ps = 100000;
  break;
 default:

  return counter->clock_period_ps;
  break;
 }

 switch (generic_clock_source & NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK) {
 case 134:
  break;
 case 133:
  clock_period_ps *= 2;
  break;
 case 132:
  clock_period_ps *= 8;
  break;
 default:
  BUG();
  break;
 }
 return clock_period_ps;
}
