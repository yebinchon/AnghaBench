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
struct n2rng {int* test_control; int /*<<< orphan*/  hv_state; TYPE_1__* units; int /*<<< orphan*/  test_buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/ * control; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_RNG_STATE_HEALTHCHECK ; 
 int RNG_CTL_ASEL_SHIFT ; 
 int RNG_CTL_LFSR ; 
 int RNG_CTL_WAIT_SHIFT ; 
 int SELFTEST_TICKS ; 
 int FUNC0 (struct n2rng*,unsigned long) ; 
 int FUNC1 (struct n2rng*,unsigned long,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct n2rng *np, unsigned long unit)
{
	int err;

	np->test_control[0] = (0x2 << RNG_CTL_ASEL_SHIFT);
	np->test_control[1] = (0x2 << RNG_CTL_ASEL_SHIFT);
	np->test_control[2] = (0x2 << RNG_CTL_ASEL_SHIFT);
	np->test_control[3] = ((0x2 << RNG_CTL_ASEL_SHIFT) |
			       RNG_CTL_LFSR |
			       ((SELFTEST_TICKS - 2) << RNG_CTL_WAIT_SHIFT));


	err = FUNC1(np, unit, np->test_control,
				      HV_RNG_STATE_HEALTHCHECK,
				      np->test_buffer,
				      sizeof(np->test_buffer),
				      &np->units[unit].control[0],
				      np->hv_state);
	if (err)
		return err;

	return FUNC0(np, unit);
}