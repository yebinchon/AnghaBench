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
struct b43_wldev {int /*<<< orphan*/  list; struct b43_wl* wl; } ;
struct b43_wl {int /*<<< orphan*/  nr_devs; } ;
struct b43_bus_dev {int dummy; } ;

/* Variables and functions */
 struct b43_wldev* FUNC0 (struct b43_bus_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_bus_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct b43_bus_dev *dev)
{
	struct b43_wldev *wldev;
	struct b43_wl *wl;

	/* Do not cancel ieee80211-workqueue based work here.
	 * See comment in b43_remove(). */

	wldev = FUNC0(dev);
	wl = wldev->wl;
	FUNC2(wldev);
	FUNC3(wldev);
	FUNC5(&wldev->list);
	wl->nr_devs--;
	FUNC1(dev, NULL);
	FUNC4(wldev);
}