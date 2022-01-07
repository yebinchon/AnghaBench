
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_and_fout; } ;


 int FOUT_Timebase_Select ;
 unsigned int NI_FREQ_OUT_TIMEBASE_1_DIV_2_CLOCK_SRC ;
 unsigned int NI_FREQ_OUT_TIMEBASE_2_CLOCK_SRC ;
 int TIMEBASE_1_NS ;
 unsigned int TIMEBASE_2_NS ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void ni_get_freq_out_clock(struct comedi_device *dev,
      unsigned int *clock_source,
      unsigned int *clock_period_ns)
{
 if (devpriv->clock_and_fout & FOUT_Timebase_Select) {
  *clock_source = NI_FREQ_OUT_TIMEBASE_2_CLOCK_SRC;
  *clock_period_ns = TIMEBASE_2_NS;
 } else {
  *clock_source = NI_FREQ_OUT_TIMEBASE_1_DIV_2_CLOCK_SRC;
  *clock_period_ns = TIMEBASE_1_NS * 2;
 }
}
