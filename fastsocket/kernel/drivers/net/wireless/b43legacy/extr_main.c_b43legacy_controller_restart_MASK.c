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
struct b43legacy_wldev {int /*<<< orphan*/  restart_work; TYPE_1__* wl; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 scalar_t__ FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct b43legacy_wldev *dev,
				  const char *reason)
{
	/* Must avoid requeueing, if we are in shutdown. */
	if (FUNC0(dev) < B43legacy_STAT_INITIALIZED)
		return;
	FUNC1(dev->wl, "Controller RESET (%s) ...\n", reason);
	FUNC2(dev->wl->hw, &dev->restart_work);
}