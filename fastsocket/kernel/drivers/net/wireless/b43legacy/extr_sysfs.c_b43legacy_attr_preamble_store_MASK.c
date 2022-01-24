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
struct b43legacy_wldev {int short_preamble; TYPE_1__* wl; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct b43legacy_wldev* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					     struct device_attribute *attr,
					     const char *buf, size_t count)
{
	struct b43legacy_wldev *wldev = FUNC1(dev);
	unsigned long flags;
	int value;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	value = FUNC2(buf, count);
	if (value < 0)
		return value;
	FUNC3(&wldev->wl->mutex);
	FUNC5(&wldev->wl->irq_lock, flags);

	wldev->short_preamble = !!value;

	FUNC6(&wldev->wl->irq_lock, flags);
	FUNC4(&wldev->wl->mutex);

	return count;
}