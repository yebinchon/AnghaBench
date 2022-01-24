#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int expires; } ;
struct TYPE_3__ {int last_tick_timer; int last_comms_qual_update; scalar_t__ iw_mode; TYPE_2__ tick_timer; int /*<<< orphan*/  comms_qual_update; int /*<<< orphan*/  dev; scalar_t__ dev_enabled; int /*<<< orphan*/  hw_resetting; scalar_t__ hw_ready; int /*<<< orphan*/  hw_downloading; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384X_CMDCODE_INQUIRE ; 
 int /*<<< orphan*/  HFA384X_INFO_COMMTALLIES ; 
 int HZ ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	static unsigned long last_inquire = 0;
	local_info_t *local = (local_info_t *) data;
	local->last_tick_timer = jiffies;

	/* Inquire CommTallies every 10 seconds to keep the statistics updated
	 * more often during low load and when using 32-bit tallies. */
	if ((!last_inquire || FUNC3(jiffies, last_inquire + 10 * HZ)) &&
	    !local->hw_downloading && local->hw_ready &&
	    !local->hw_resetting && local->dev_enabled) {
		FUNC1(local->dev, HFA384X_CMDCODE_INQUIRE,
				     HFA384X_INFO_COMMTALLIES, NULL, 0);
		last_inquire = jiffies;
	}

	if ((local->last_comms_qual_update == 0 ||
	     FUNC3(jiffies, local->last_comms_qual_update + 10 * HZ)) &&
	    (local->iw_mode == IW_MODE_INFRA ||
	     local->iw_mode == IW_MODE_ADHOC)) {
		FUNC2(&local->comms_qual_update);
	}

	local->tick_timer.expires = jiffies + 2 * HZ;
	FUNC0(&local->tick_timer);
}