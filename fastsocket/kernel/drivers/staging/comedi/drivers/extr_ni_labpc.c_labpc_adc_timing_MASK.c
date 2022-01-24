#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct comedi_cmd {int flags; } ;
struct TYPE_2__ {int divisor_b0; unsigned int divisor_a0; unsigned int divisor_b1; } ;

/* Variables and functions */
 int const LABPC_TIMER_BASE ; 
#define  TRIG_ROUND_DOWN 130 
 int TRIG_ROUND_MASK ; 
#define  TRIG_ROUND_NEAREST 129 
#define  TRIG_ROUND_UP 128 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int const,unsigned int*,int const*,unsigned int*,int) ; 
 int FUNC1 (struct comedi_cmd*) ; 
 int FUNC2 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_cmd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_cmd*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, struct comedi_cmd *cmd)
{
	const int max_counter_value = 0x10000;	/*  max value for 16 bit counter in mode 2 */
	const int min_counter_value = 2;	/*  min value for 16 bit counter in mode 2 */
	unsigned int base_period;

	/*  if both convert and scan triggers are TRIG_TIMER, then they both rely on counter b0 */
	if (FUNC1(cmd) && FUNC2(cmd)) {
		/*  pick the lowest b0 divisor value we can (for maximum input clock speed on convert and scan counters) */
		devpriv->divisor_b0 = (FUNC2(cmd) - 1) /
		    (LABPC_TIMER_BASE * max_counter_value) + 1;
		if (devpriv->divisor_b0 < min_counter_value)
			devpriv->divisor_b0 = min_counter_value;
		if (devpriv->divisor_b0 > max_counter_value)
			devpriv->divisor_b0 = max_counter_value;

		base_period = LABPC_TIMER_BASE * devpriv->divisor_b0;

		/*  set a0 for conversion frequency and b1 for scan frequency */
		switch (cmd->flags & TRIG_ROUND_MASK) {
		default:
		case TRIG_ROUND_NEAREST:
			devpriv->divisor_a0 =
			    (FUNC1(cmd) +
			     (base_period / 2)) / base_period;
			devpriv->divisor_b1 =
			    (FUNC2(cmd) +
			     (base_period / 2)) / base_period;
			break;
		case TRIG_ROUND_UP:
			devpriv->divisor_a0 =
			    (FUNC1(cmd) + (base_period -
							     1)) / base_period;
			devpriv->divisor_b1 =
			    (FUNC2(cmd) + (base_period -
							  1)) / base_period;
			break;
		case TRIG_ROUND_DOWN:
			devpriv->divisor_a0 =
			    FUNC1(cmd) / base_period;
			devpriv->divisor_b1 =
			    FUNC2(cmd) / base_period;
			break;
		}
		/*  make sure a0 and b1 values are acceptable */
		if (devpriv->divisor_a0 < min_counter_value)
			devpriv->divisor_a0 = min_counter_value;
		if (devpriv->divisor_a0 > max_counter_value)
			devpriv->divisor_a0 = max_counter_value;
		if (devpriv->divisor_b1 < min_counter_value)
			devpriv->divisor_b1 = min_counter_value;
		if (devpriv->divisor_b1 > max_counter_value)
			devpriv->divisor_b1 = max_counter_value;
		/*  write corrected timings to command */
		FUNC3(cmd,
					    base_period * devpriv->divisor_a0);
		FUNC4(cmd,
					 base_period * devpriv->divisor_b1);
		/*  if only one TRIG_TIMER is used, we can employ the generic cascaded timing functions */
	} else if (FUNC2(cmd)) {
		unsigned int scan_period;

		scan_period = FUNC2(cmd);
		/* calculate cascaded counter values that give desired scan timing */
		FUNC0(LABPC_TIMER_BASE,
					       &(devpriv->divisor_b1),
					       &(devpriv->divisor_b0),
					       &scan_period,
					       cmd->flags & TRIG_ROUND_MASK);
		FUNC4(cmd, scan_period);
	} else if (FUNC1(cmd)) {
		unsigned int convert_period;

		convert_period = FUNC1(cmd);
		/* calculate cascaded counter values that give desired conversion timing */
		FUNC0(LABPC_TIMER_BASE,
					       &(devpriv->divisor_a0),
					       &(devpriv->divisor_b0),
					       &convert_period,
					       cmd->flags & TRIG_ROUND_MASK);
		FUNC3(cmd, convert_period);
	}
}