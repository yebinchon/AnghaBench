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
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  watchdog_work; int /*<<< orphan*/  vco_work; int /*<<< orphan*/  agc_work; } ;
struct rt2x00_dev {TYPE_1__ link; int /*<<< orphan*/  cap_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_VCO_RECALIBRATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt2x00link_agc ; 
 int /*<<< orphan*/  rt2x00link_tuner ; 
 int /*<<< orphan*/  rt2x00link_vcocal ; 
 int /*<<< orphan*/  rt2x00link_watchdog ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct rt2x00_dev *rt2x00dev)
{
	FUNC0(&rt2x00dev->link.agc_work, rt2x00link_agc);
	if (FUNC1(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags))
		FUNC0(&rt2x00dev->link.vco_work, rt2x00link_vcocal);
	FUNC0(&rt2x00dev->link.watchdog_work, rt2x00link_watchdog);
	FUNC0(&rt2x00dev->link.work, rt2x00link_tuner);
}