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
struct ni_gpct {int dummy; } ;
struct comedi_insn {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  INSN_CONFIG_ARM 137 
#define  INSN_CONFIG_DISARM 136 
#define  INSN_CONFIG_GET_CLOCK_SRC 135 
#define  INSN_CONFIG_GET_COUNTER_STATUS 134 
#define  INSN_CONFIG_GET_GATE_SRC 133 
#define  INSN_CONFIG_RESET 132 
#define  INSN_CONFIG_SET_CLOCK_SRC 131 
#define  INSN_CONFIG_SET_COUNTER_MODE 130 
#define  INSN_CONFIG_SET_GATE_SRC 129 
#define  INSN_CONFIG_SET_OTHER_SRC 128 
 unsigned int counter_status_mask ; 
 int FUNC0 (struct ni_gpct*,int,unsigned int) ; 
 unsigned int FUNC1 (struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*,unsigned int*,unsigned int*) ; 
 int FUNC3 (struct ni_gpct*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ni_gpct*) ; 
 int FUNC5 (struct ni_gpct*,unsigned int,unsigned int) ; 
 int FUNC6 (struct ni_gpct*,unsigned int) ; 
 int FUNC7 (struct ni_gpct*,unsigned int,unsigned int) ; 
 int FUNC8 (struct ni_gpct*,unsigned int,unsigned int) ; 

int FUNC9(struct ni_gpct *counter,
		       struct comedi_insn *insn, unsigned int *data)
{
	switch (data[0]) {
	case INSN_CONFIG_SET_COUNTER_MODE:
		return FUNC6(counter, data[1]);
		break;
	case INSN_CONFIG_ARM:
		return FUNC0(counter, 1, data[1]);
		break;
	case INSN_CONFIG_DISARM:
		FUNC0(counter, 0, 0);
		return 0;
		break;
	case INSN_CONFIG_GET_COUNTER_STATUS:
		data[1] = FUNC1(counter);
		data[2] = counter_status_mask;
		return 0;
		break;
	case INSN_CONFIG_SET_CLOCK_SRC:
		return FUNC5(counter, data[1], data[2]);
		break;
	case INSN_CONFIG_GET_CLOCK_SRC:
		FUNC2(counter, &data[1], &data[2]);
		return 0;
		break;
	case INSN_CONFIG_SET_GATE_SRC:
		return FUNC7(counter, data[1], data[2]);
		break;
	case INSN_CONFIG_GET_GATE_SRC:
		return FUNC3(counter, data[1], &data[2]);
		break;
	case INSN_CONFIG_SET_OTHER_SRC:
		return FUNC8(counter, data[1], data[2]);
		break;
	case INSN_CONFIG_RESET:
		FUNC4(counter);
		return 0;
		break;
	default:
		break;
	}
	return -EINVAL;
}