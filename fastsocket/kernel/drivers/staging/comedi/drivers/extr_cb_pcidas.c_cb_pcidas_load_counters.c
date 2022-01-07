
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int divisor2; scalar_t__ pacer_counter_dio; int divisor1; } ;


 scalar_t__ ADC8254 ;
 int TIMER_BASE ;
 int TRIG_ROUND_MASK ;
 TYPE_1__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int ,int *,int *,unsigned int*,int) ;
 int i8254_load (scalar_t__,int ,int,int ,int) ;

__attribute__((used)) static void cb_pcidas_load_counters(struct comedi_device *dev, unsigned int *ns,
        int rounding_flags)
{
 i8253_cascade_ns_to_timer_2div(TIMER_BASE, &(devpriv->divisor1),
           &(devpriv->divisor2), ns,
           rounding_flags & TRIG_ROUND_MASK);


 i8254_load(devpriv->pacer_counter_dio + ADC8254, 0, 1,
     devpriv->divisor1, 2);
 i8254_load(devpriv->pacer_counter_dio + ADC8254, 0, 2,
     devpriv->divisor2, 2);
}
