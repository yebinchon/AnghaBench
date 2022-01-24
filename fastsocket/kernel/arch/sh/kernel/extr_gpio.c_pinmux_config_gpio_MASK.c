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
struct pinmux_range {scalar_t__ force; } ;
struct pinmux_info {struct pinmux_range function; struct pinmux_range input_pd; struct pinmux_range input_pu; struct pinmux_range input; struct pinmux_range output; } ;
struct pinmux_cfg_reg {int dummy; } ;
typedef  scalar_t__ pinmux_enum_t ;

/* Variables and functions */
#define  GPIO_CFG_DRYRUN 135 
#define  GPIO_CFG_FREE 134 
#define  GPIO_CFG_REQ 133 
#define  PINMUX_TYPE_FUNCTION 132 
#define  PINMUX_TYPE_INPUT 131 
#define  PINMUX_TYPE_INPUT_PULLDOWN 130 
#define  PINMUX_TYPE_INPUT_PULLUP 129 
#define  PINMUX_TYPE_OUTPUT 128 
 int /*<<< orphan*/  FUNC0 (struct pinmux_info*,struct pinmux_cfg_reg*,int) ; 
 int FUNC1 (scalar_t__,struct pinmux_range*) ; 
 scalar_t__ FUNC2 (struct pinmux_info*,scalar_t__,struct pinmux_cfg_reg**,int*,unsigned long**) ; 
 int FUNC3 (struct pinmux_info*,unsigned int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pinmux_info*,struct pinmux_cfg_reg*,int) ; 

__attribute__((used)) static int FUNC5(struct pinmux_info *gpioc, unsigned gpio,
			      int pinmux_type, int cfg_mode)
{
	struct pinmux_cfg_reg *cr = NULL;
	pinmux_enum_t enum_id;
	struct pinmux_range *range;
	int in_range, pos, index;
	unsigned long *cntp;

	switch (pinmux_type) {

	case PINMUX_TYPE_FUNCTION:
		range = NULL;
		break;

	case PINMUX_TYPE_OUTPUT:
		range = &gpioc->output;
		break;

	case PINMUX_TYPE_INPUT:
		range = &gpioc->input;
		break;

	case PINMUX_TYPE_INPUT_PULLUP:
		range = &gpioc->input_pu;
		break;

	case PINMUX_TYPE_INPUT_PULLDOWN:
		range = &gpioc->input_pd;
		break;

	default:
		goto out_err;
	}

	pos = 0;
	enum_id = 0;
	index = 0;
	while (1) {
		pos = FUNC3(gpioc, gpio, pos, &enum_id);
		if (pos <= 0)
			goto out_err;

		if (!enum_id)
			break;

		in_range = FUNC1(enum_id, &gpioc->function);
		if (!in_range && range) {
			in_range = FUNC1(enum_id, range);

			if (in_range && enum_id == range->force)
				continue;
		}

		if (!in_range)
			continue;

		if (FUNC2(gpioc, enum_id, &cr, &index, &cntp) != 0)
			goto out_err;

		switch (cfg_mode) {
		case GPIO_CFG_DRYRUN:
			if (!*cntp || !FUNC0(gpioc, cr, index))
				continue;
			break;

		case GPIO_CFG_REQ:
			FUNC4(gpioc, cr, index);
			*cntp = *cntp + 1;
			break;

		case GPIO_CFG_FREE:
			*cntp = *cntp - 1;
			break;
		}
	}

	return 0;
 out_err:
	return -1;
}