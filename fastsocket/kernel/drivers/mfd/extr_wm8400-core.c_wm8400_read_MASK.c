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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wm8400 {int (* read_dev ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * reg_cache; int /*<<< orphan*/  io_data; } ;
struct TYPE_2__ {scalar_t__ vol; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* reg_data ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct wm8400 *wm8400, u8 reg, int num_regs, u16 *dest)
{
	int i, ret = 0;

	FUNC1(reg + num_regs - 1 > FUNC0(wm8400->reg_cache));

	/* If there are any volatile reads then read back the entire block */
	for (i = reg; i < reg + num_regs; i++)
		if (reg_data[i].vol) {
			ret = wm8400->read_dev(wm8400->io_data, reg,
					       num_regs, dest);
			if (ret != 0)
				return ret;
			for (i = 0; i < num_regs; i++)
				dest[i] = FUNC2(dest[i]);

			return 0;
		}

	/* Otherwise use the cache */
	FUNC3(dest, &wm8400->reg_cache[reg], num_regs * sizeof(u16));

	return 0;
}