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
struct ssb_device {int dummy; } ;
struct b43legacy_wldev {int /*<<< orphan*/  list; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int /*<<< orphan*/  nr_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct b43legacy_wldev* FUNC4 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ssb_device *dev)
{
	struct b43legacy_wldev *wldev;
	struct b43legacy_wl *wl;

	/* Do not cancel ieee80211-workqueue based work here.
	 * See comment in b43legacy_remove(). */

	wldev = FUNC4(dev);
	wl = wldev->wl;
	FUNC0(wldev);
	FUNC1(wldev);
	FUNC3(&wldev->list);
	wl->nr_devs--;
	FUNC5(dev, NULL);
	FUNC2(wldev);
}