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
struct b43_wldev {TYPE_2__* wl; } ;
struct b43_txstatus {int rts_count; int /*<<< orphan*/  acked; scalar_t__ for_ampdu; scalar_t__ intermediate; } ;
struct TYPE_3__ {int /*<<< orphan*/  dot11RTSSuccessCount; int /*<<< orphan*/  dot11RTSFailureCount; int /*<<< orphan*/  dot11ACKFailureCount; } ;
struct TYPE_4__ {TYPE_1__ ieee_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,struct b43_txstatus const*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,struct b43_txstatus const*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,struct b43_txstatus const*) ; 
 scalar_t__ FUNC4 (struct b43_wldev*) ; 

void FUNC5(struct b43_wldev *dev,
			 const struct b43_txstatus *status)
{
	FUNC0(dev, status);

	if (status->intermediate)
		return;
	if (status->for_ampdu)
		return;
	if (!status->acked)
		dev->wl->ieee_stats.dot11ACKFailureCount++;
	if (status->rts_count) {
		if (status->rts_count == 0xF)	//FIXME
			dev->wl->ieee_stats.dot11RTSFailureCount++;
		else
			dev->wl->ieee_stats.dot11RTSSuccessCount++;
	}

	if (FUNC4(dev))
		FUNC3(dev, status);
	else
		FUNC1(dev, status);

	FUNC2(dev, 0);
}