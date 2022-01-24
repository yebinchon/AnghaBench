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
struct pinmux_info {int first_gpio; int last_gpio; struct pinmux_data_reg* data_regs; } ;
struct pinmux_data_reg {int /*<<< orphan*/  reg_width; int /*<<< orphan*/  reg; int /*<<< orphan*/  reg_shadow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pinmux_info*,int) ; 

__attribute__((used)) static void FUNC2(struct pinmux_info *gpioc)
{
	struct pinmux_data_reg *drp;
	int k;

	for (k = gpioc->first_gpio; k <= gpioc->last_gpio; k++)
		FUNC1(gpioc, k);

	k = 0;
	while (1) {
		drp = gpioc->data_regs + k;

		if (!drp->reg_width)
			break;

		drp->reg_shadow = FUNC0(drp->reg, drp->reg_width);
		k++;
	}
}