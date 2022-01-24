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
struct pinmux_info {struct pinmux_data_reg* data_regs; int /*<<< orphan*/  data; struct pinmux_gpio* gpios; } ;
struct pinmux_gpio {scalar_t__ enum_id; int flags; } ;
struct pinmux_data_reg {int reg_width; scalar_t__* enum_ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PINMUX_FLAG_DBIT ; 
 int PINMUX_FLAG_DBIT_SHIFT ; 
 int PINMUX_FLAG_DREG ; 
 int PINMUX_FLAG_DREG_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct pinmux_info *gpioc, unsigned gpio)
{
	struct pinmux_gpio *gpiop = &gpioc->gpios[gpio];
	struct pinmux_data_reg *data_reg;
	int k, n;

	if (!FUNC1(gpiop->enum_id, &gpioc->data))
		return -1;

	k = 0;
	while (1) {
		data_reg = gpioc->data_regs + k;

		if (!data_reg->reg_width)
			break;

		for (n = 0; n < data_reg->reg_width; n++) {
			if (data_reg->enum_ids[n] == gpiop->enum_id) {
				gpiop->flags &= ~PINMUX_FLAG_DREG;
				gpiop->flags |= (k << PINMUX_FLAG_DREG_SHIFT);
				gpiop->flags &= ~PINMUX_FLAG_DBIT;
				gpiop->flags |= (n << PINMUX_FLAG_DBIT_SHIFT);
				return 0;
			}
		}
		k++;
	}

	FUNC0();

	return -1;
}