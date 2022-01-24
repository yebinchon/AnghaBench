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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_c_info {int /*<<< orphan*/  band; TYPE_1__* stf; int /*<<< orphan*/  cmi; int /*<<< orphan*/  chanspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  ss_algo_channel; scalar_t__ ss_algosel_auto; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_TXPWR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc,
				     u16 chanspec)
{
	/* Save our copy of the chanspec */
	wlc->chanspec = chanspec;

	/* Set the chanspec and power limits for this locale */
	FUNC0(wlc->cmi, chanspec, BRCMS_TXPWR_MAX);

	if (wlc->stf->ss_algosel_auto)
		FUNC1(wlc, &wlc->stf->ss_algo_channel,
					    chanspec);

	FUNC2(wlc, wlc->band);
}