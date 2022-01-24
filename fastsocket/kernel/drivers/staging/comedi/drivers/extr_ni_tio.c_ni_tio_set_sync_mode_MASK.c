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
typedef  scalar_t__ uint64_t ;
struct ni_gpct_device {int /*<<< orphan*/  variant; } ;
struct ni_gpct {int /*<<< orphan*/  counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int Gi_Counting_Mode_Mask ; 
#define  Gi_Counting_Mode_QuadratureX1_Bits 131 
#define  Gi_Counting_Mode_QuadratureX2_Bits 130 
#define  Gi_Counting_Mode_QuadratureX4_Bits 129 
#define  Gi_Counting_Mode_Sync_Source_Bits 128 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ni_gpct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ni_gpct*) ; 
 int FUNC5 (struct ni_gpct*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC6 (struct ni_gpct*,unsigned int const,int,int) ; 

__attribute__((used)) static void FUNC7(struct ni_gpct *counter, int force_alt_sync)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	const unsigned counting_mode_reg =
	    FUNC1(counter->counter_index);
	static const uint64_t min_normal_sync_period_ps = 25000;
	const uint64_t clock_period_ps = FUNC2(counter,
								FUNC4
								(counter));

	if (FUNC3(counter_dev) == 0)
		return;

	switch (FUNC5(counter,
				     counting_mode_reg) & Gi_Counting_Mode_Mask)
	{
	case Gi_Counting_Mode_QuadratureX1_Bits:
	case Gi_Counting_Mode_QuadratureX2_Bits:
	case Gi_Counting_Mode_QuadratureX4_Bits:
	case Gi_Counting_Mode_Sync_Source_Bits:
		force_alt_sync = 1;
		break;
	default:
		break;
	}
	/* It's not clear what we should do if clock_period is unknown, so we are not
	   using the alt sync bit in that case, but allow the caller to decide by using the
	   force_alt_sync parameter. */
	if (force_alt_sync ||
	    (clock_period_ps && clock_period_ps < min_normal_sync_period_ps)) {
		FUNC6(counter, counting_mode_reg,
				FUNC0(counter_dev->variant),
				FUNC0(counter_dev->variant));
	} else {
		FUNC6(counter, counting_mode_reg,
				FUNC0(counter_dev->variant),
				0x0);
	}
}