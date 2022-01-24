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
struct pinmux_info {int dummy; } ;
struct pinmux_data_reg {int /*<<< orphan*/  reg_width; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct pinmux_info*,unsigned int,struct pinmux_data_reg**,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct pinmux_info *gpioc, unsigned gpio)
{
	struct pinmux_data_reg *dr = NULL;
	int bit = 0;

	if (!gpioc || FUNC1(gpioc, gpio, &dr, &bit) != 0) {
		FUNC0();
		return 0;
	}

	return FUNC2(dr->reg, dr->reg_width, 1, bit);
}