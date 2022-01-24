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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; scalar_t__ short_preamble; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct b43legacy_wldev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct b43legacy_wldev *wldev = FUNC1(dev);
	ssize_t count;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	FUNC2(&wldev->wl->mutex);

	if (wldev->short_preamble)
		count = FUNC4(buf, PAGE_SIZE, "1 (Short Preamble"
				 " enabled)\n");
	else
		count = FUNC4(buf, PAGE_SIZE, "0 (Short Preamble"
				 " disabled)\n");

	FUNC3(&wldev->wl->mutex);

	return count;
}