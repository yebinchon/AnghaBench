#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__* g; } ;
struct b43_wldev {TYPE_3__* wl; TYPE_2__ phy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int interfmode; } ;

/* Variables and functions */
#define  B43_INTERFMODE_MANUALWLAN 130 
#define  B43_INTERFMODE_NONE 129 
#define  B43_INTERFMODE_NONWLAN 128 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct b43_wldev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct b43_wldev *wldev = FUNC2(dev);
	ssize_t count = 0;

	if (!FUNC1(CAP_NET_ADMIN))
		return -EPERM;

	FUNC3(&wldev->wl->mutex);

	if (wldev->phy.type != B43_PHYTYPE_G) {
		FUNC4(&wldev->wl->mutex);
		return -ENOSYS;
	}

	switch (wldev->phy.g->interfmode) {
	case B43_INTERFMODE_NONE:
		count =
		    FUNC5(buf, PAGE_SIZE,
			     "0 (No Interference Mitigation)\n");
		break;
	case B43_INTERFMODE_NONWLAN:
		count =
		    FUNC5(buf, PAGE_SIZE,
			     "1 (Non-WLAN Interference Mitigation)\n");
		break;
	case B43_INTERFMODE_MANUALWLAN:
		count =
		    FUNC5(buf, PAGE_SIZE,
			     "2 (WLAN Interference Mitigation)\n");
		break;
	default:
		FUNC0(1);
	}

	FUNC4(&wldev->wl->mutex);

	return count;
}