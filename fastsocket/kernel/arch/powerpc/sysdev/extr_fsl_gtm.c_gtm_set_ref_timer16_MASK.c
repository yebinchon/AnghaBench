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
struct gtm_timer {int /*<<< orphan*/  gtcfr; scalar_t__ gtevr; scalar_t__ gtrfr; scalar_t__ gtcnr; int /*<<< orphan*/  gtmdr; scalar_t__ gtpsr; struct gtm* gtm; } ;
struct gtm {int clock; int /*<<< orphan*/  lock; struct gtm_timer* timers; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int GTMDR_FRR ; 
 int GTMDR_ICLK_ICLK ; 
 int GTMDR_ICLK_SLGO ; 
 int GTMDR_ORI ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct gtm_timer *tmr, int frequency,
			       int reference_value, bool free_run)
{
	struct gtm *gtm = tmr->gtm;
	int num = tmr - &gtm->timers[0];
	unsigned int prescaler;
	u8 iclk = GTMDR_ICLK_ICLK;
	u8 psr;
	u8 sps;
	unsigned long flags;
	int max_prescaler = 256 * 256 * 16;

	/* CPM2 doesn't have primary prescaler */
	if (!tmr->gtpsr)
		max_prescaler /= 256;

	prescaler = gtm->clock / frequency;
	/*
	 * We have two 8 bit prescalers -- primary and secondary (psr, sps),
	 * plus "slow go" mode (clk / 16). So, total prescale value is
	 * 16 * (psr + 1) * (sps + 1). Though, for CPM2 GTMs we losing psr.
	 */
	if (prescaler > max_prescaler)
		return -EINVAL;

	if (prescaler > max_prescaler / 16) {
		iclk = GTMDR_ICLK_SLGO;
		prescaler /= 16;
	}

	if (prescaler <= 256) {
		psr = 0;
		sps = prescaler - 1;
	} else {
		psr = 256 - 1;
		sps = prescaler / 256 - 1;
	}

	FUNC8(&gtm->lock, flags);

	/*
	 * Properly reset timers: stop, reset, set up prescalers, reference
	 * value and clear event register.
	 */
	FUNC4(tmr->gtcfr, ~(FUNC1(num) | FUNC0(num)),
				 FUNC1(num) | FUNC0(num));

	FUNC7(tmr->gtcfr, FUNC1(num));

	if (tmr->gtpsr)
		FUNC6(tmr->gtpsr, psr);
	FUNC5(tmr->gtmdr, 0xFFFF, iclk | FUNC2(sps) |
			GTMDR_ORI | (free_run ? GTMDR_FRR : 0));
	FUNC6(tmr->gtcnr, 0);
	FUNC6(tmr->gtrfr, reference_value);
	FUNC6(tmr->gtevr, 0xFFFF);

	/* Let it be. */
	FUNC3(tmr->gtcfr, FUNC1(num));

	FUNC9(&gtm->lock, flags);

	return 0;
}