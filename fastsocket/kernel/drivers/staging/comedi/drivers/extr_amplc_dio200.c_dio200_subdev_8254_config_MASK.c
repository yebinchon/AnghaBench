#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dio200_subdev_8254 {int /*<<< orphan*/  iobase; } ;
struct comedi_subdevice {struct dio200_subdev_8254* private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_8254_READ_STATUS 133 
#define  INSN_CONFIG_GET_CLOCK_SRC 132 
#define  INSN_CONFIG_GET_GATE_SRC 131 
#define  INSN_CONFIG_SET_CLOCK_SRC 130 
#define  INSN_CONFIG_SET_COUNTER_MODE 129 
#define  INSN_CONFIG_SET_GATE_SRC 128 
 int FUNC1 (struct dio200_subdev_8254*,int,unsigned int*) ; 
 int FUNC2 (struct dio200_subdev_8254*,int) ; 
 int FUNC3 (struct dio200_subdev_8254*,int,unsigned int) ; 
 int FUNC4 (struct dio200_subdev_8254*,int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	struct dio200_subdev_8254 *subpriv = s->private;
	int ret;
	int chan = FUNC0(insn->chanspec);

	switch (data[0]) {
	case INSN_CONFIG_SET_COUNTER_MODE:
		ret = FUNC5(subpriv->iobase, 0, chan, data[1]);
		if (ret < 0)
			return -EINVAL;
		break;
	case INSN_CONFIG_8254_READ_STATUS:
		data[1] = FUNC6(subpriv->iobase, 0, chan);
		break;
	case INSN_CONFIG_SET_GATE_SRC:
		ret = FUNC4(subpriv, chan, data[2]);
		if (ret < 0)
			return -EINVAL;
		break;
	case INSN_CONFIG_GET_GATE_SRC:
		ret = FUNC2(subpriv, chan);
		if (ret < 0)
			return -EINVAL;
		data[2] = ret;
		break;
	case INSN_CONFIG_SET_CLOCK_SRC:
		ret = FUNC3(subpriv, chan, data[1]);
		if (ret < 0)
			return -EINVAL;
		break;
	case INSN_CONFIG_GET_CLOCK_SRC:
		ret = FUNC1(subpriv, chan, &data[2]);
		if (ret < 0)
			return -EINVAL;
		data[1] = ret;
		break;
	default:
		return -EINVAL;
		break;
	}
	return insn->n;
}