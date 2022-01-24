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
struct brcms_c_info {int radio_monitor; int /*<<< orphan*/  radio_timer; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_PLLREQ_RADIO_MON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct brcms_c_info *wlc)
{
	if (!wlc->radio_monitor)
		return true;

	wlc->radio_monitor = false;
	FUNC0(wlc->hw, false, BRCMS_PLLREQ_RADIO_MON);
	return FUNC1(wlc->radio_timer);
}