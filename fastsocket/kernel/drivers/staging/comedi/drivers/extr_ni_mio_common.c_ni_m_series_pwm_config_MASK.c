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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int clock_ns; unsigned int pwm_up_count; unsigned int pwm_down_count; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
#define  INSN_CONFIG_GET_PWM_OUTPUT 132 
#define  INSN_CONFIG_PWM_OUTPUT 131 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  M_Offset_Cal_PWM ; 
#define  TRIG_ROUND_DOWN 130 
#define  TRIG_ROUND_NEAREST 129 
#define  TRIG_ROUND_UP 128 
 TYPE_1__* devpriv ; 
 int FUNC2 (struct comedi_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn, unsigned int *data)
{
	unsigned up_count, down_count;
	switch (data[0]) {
	case INSN_CONFIG_PWM_OUTPUT:
		switch (data[1]) {
		case TRIG_ROUND_NEAREST:
			up_count =
			    (data[2] +
			     devpriv->clock_ns / 2) / devpriv->clock_ns;
			break;
		case TRIG_ROUND_DOWN:
			up_count = data[2] / devpriv->clock_ns;
			break;
		case TRIG_ROUND_UP:
			up_count =
			    (data[2] + devpriv->clock_ns -
			     1) / devpriv->clock_ns;
			break;
		default:
			return -EINVAL;
			break;
		}
		switch (data[3]) {
		case TRIG_ROUND_NEAREST:
			down_count =
			    (data[4] +
			     devpriv->clock_ns / 2) / devpriv->clock_ns;
			break;
		case TRIG_ROUND_DOWN:
			down_count = data[4] / devpriv->clock_ns;
			break;
		case TRIG_ROUND_UP:
			down_count =
			    (data[4] + devpriv->clock_ns -
			     1) / devpriv->clock_ns;
			break;
		default:
			return -EINVAL;
			break;
		}
		if (up_count * devpriv->clock_ns != data[2] ||
		    down_count * devpriv->clock_ns != data[4]) {
			data[2] = up_count * devpriv->clock_ns;
			data[4] = down_count * devpriv->clock_ns;
			return -EAGAIN;
		}
		FUNC3(FUNC0(up_count) |
			  FUNC1(down_count),
			  M_Offset_Cal_PWM);
		devpriv->pwm_up_count = up_count;
		devpriv->pwm_down_count = down_count;
		return 5;
		break;
	case INSN_CONFIG_GET_PWM_OUTPUT:
		return FUNC2(dev, data);
		break;
	default:
		return -EINVAL;
		break;
	}
	return 0;
}