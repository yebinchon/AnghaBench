
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {int flags; } ;
struct TYPE_2__ {int divisor_b0; unsigned int divisor_a0; unsigned int divisor_b1; } ;


 int const LABPC_TIMER_BASE ;

 int TRIG_ROUND_MASK ;


 TYPE_1__* devpriv ;
 int i8253_cascade_ns_to_timer_2div (int const,unsigned int*,int const*,unsigned int*,int) ;
 int labpc_ai_convert_period (struct comedi_cmd*) ;
 int labpc_ai_scan_period (struct comedi_cmd*) ;
 int labpc_set_ai_convert_period (struct comedi_cmd*,unsigned int) ;
 int labpc_set_ai_scan_period (struct comedi_cmd*,unsigned int) ;

__attribute__((used)) static void labpc_adc_timing(struct comedi_device *dev, struct comedi_cmd *cmd)
{
 const int max_counter_value = 0x10000;
 const int min_counter_value = 2;
 unsigned int base_period;


 if (labpc_ai_convert_period(cmd) && labpc_ai_scan_period(cmd)) {

  devpriv->divisor_b0 = (labpc_ai_scan_period(cmd) - 1) /
      (LABPC_TIMER_BASE * max_counter_value) + 1;
  if (devpriv->divisor_b0 < min_counter_value)
   devpriv->divisor_b0 = min_counter_value;
  if (devpriv->divisor_b0 > max_counter_value)
   devpriv->divisor_b0 = max_counter_value;

  base_period = LABPC_TIMER_BASE * devpriv->divisor_b0;


  switch (cmd->flags & TRIG_ROUND_MASK) {
  default:
  case 129:
   devpriv->divisor_a0 =
       (labpc_ai_convert_period(cmd) +
        (base_period / 2)) / base_period;
   devpriv->divisor_b1 =
       (labpc_ai_scan_period(cmd) +
        (base_period / 2)) / base_period;
   break;
  case 128:
   devpriv->divisor_a0 =
       (labpc_ai_convert_period(cmd) + (base_period -
            1)) / base_period;
   devpriv->divisor_b1 =
       (labpc_ai_scan_period(cmd) + (base_period -
         1)) / base_period;
   break;
  case 130:
   devpriv->divisor_a0 =
       labpc_ai_convert_period(cmd) / base_period;
   devpriv->divisor_b1 =
       labpc_ai_scan_period(cmd) / base_period;
   break;
  }

  if (devpriv->divisor_a0 < min_counter_value)
   devpriv->divisor_a0 = min_counter_value;
  if (devpriv->divisor_a0 > max_counter_value)
   devpriv->divisor_a0 = max_counter_value;
  if (devpriv->divisor_b1 < min_counter_value)
   devpriv->divisor_b1 = min_counter_value;
  if (devpriv->divisor_b1 > max_counter_value)
   devpriv->divisor_b1 = max_counter_value;

  labpc_set_ai_convert_period(cmd,
         base_period * devpriv->divisor_a0);
  labpc_set_ai_scan_period(cmd,
      base_period * devpriv->divisor_b1);

 } else if (labpc_ai_scan_period(cmd)) {
  unsigned int scan_period;

  scan_period = labpc_ai_scan_period(cmd);

  i8253_cascade_ns_to_timer_2div(LABPC_TIMER_BASE,
            &(devpriv->divisor_b1),
            &(devpriv->divisor_b0),
            &scan_period,
            cmd->flags & TRIG_ROUND_MASK);
  labpc_set_ai_scan_period(cmd, scan_period);
 } else if (labpc_ai_convert_period(cmd)) {
  unsigned int convert_period;

  convert_period = labpc_ai_convert_period(cmd);

  i8253_cascade_ns_to_timer_2div(LABPC_TIMER_BASE,
            &(devpriv->divisor_a0),
            &(devpriv->divisor_b0),
            &convert_period,
            cmd->flags & TRIG_ROUND_MASK);
  labpc_set_ai_convert_period(cmd, convert_period);
 }
}
