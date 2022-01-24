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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_GPIO ; 
 int MISC_REGISTERS_GPIO_CLR_POS ; 
 int MISC_REGISTERS_GPIO_FLOAT_POS ; 
#define  MISC_REGISTERS_GPIO_INPUT_HI_Z 130 
#define  MISC_REGISTERS_GPIO_OUTPUT_HIGH 129 
#define  MISC_REGISTERS_GPIO_OUTPUT_LOW 128 
 int MISC_REGISTERS_GPIO_SET_POS ; 
 int /*<<< orphan*/  MISC_REG_GPIO ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 

int FUNC6(struct bnx2x *bp, u8 pins, u32 mode)
{
	u32 gpio_reg = 0;
	int rc = 0;

	/* Any port swapping should be handled by caller. */

	FUNC4(bp, HW_LOCK_RESOURCE_GPIO);
	/* read GPIO and mask except the float bits */
	gpio_reg = FUNC2(bp, MISC_REG_GPIO);
	gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_FLOAT_POS);
	gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_CLR_POS);
	gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_SET_POS);

	switch (mode) {
	case MISC_REGISTERS_GPIO_OUTPUT_LOW:
		FUNC1(NETIF_MSG_LINK, "Set GPIO 0x%x -> output low\n", pins);
		/* set CLR */
		gpio_reg |= (pins << MISC_REGISTERS_GPIO_CLR_POS);
		break;

	case MISC_REGISTERS_GPIO_OUTPUT_HIGH:
		FUNC1(NETIF_MSG_LINK, "Set GPIO 0x%x -> output high\n", pins);
		/* set SET */
		gpio_reg |= (pins << MISC_REGISTERS_GPIO_SET_POS);
		break;

	case MISC_REGISTERS_GPIO_INPUT_HI_Z:
		FUNC1(NETIF_MSG_LINK, "Set GPIO 0x%x -> input\n", pins);
		/* set FLOAT */
		gpio_reg |= (pins << MISC_REGISTERS_GPIO_FLOAT_POS);
		break;

	default:
		FUNC0("Invalid GPIO mode assignment %d\n", mode);
		rc = -EINVAL;
		break;
	}

	if (rc == 0)
		FUNC3(bp, MISC_REG_GPIO, gpio_reg);

	FUNC5(bp, HW_LOCK_RESOURCE_GPIO);

	return rc;
}