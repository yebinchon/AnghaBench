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
struct b43legacy_wldev {int __using_pio; int /*<<< orphan*/  list; int /*<<< orphan*/  isr_tasklet; int /*<<< orphan*/  bad_frames_preempt; struct b43legacy_wl* wl; struct ssb_device* dev; } ;
struct b43legacy_wl {int /*<<< orphan*/  nr_devs; int /*<<< orphan*/  devlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_STAT_UNINIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 scalar_t__ b43legacy_interrupt_tasklet ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 struct b43legacy_wldev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modparam_bad_frames_preempt ; 
 scalar_t__ modparam_pio ; 
 int /*<<< orphan*/  FUNC7 (struct ssb_device*,struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ssb_device *dev,
				     struct b43legacy_wl *wl)
{
	struct b43legacy_wldev *wldev;
	int err = -ENOMEM;

	wldev = FUNC5(sizeof(*wldev), GFP_KERNEL);
	if (!wldev)
		goto out;

	wldev->dev = dev;
	wldev->wl = wl;
	FUNC2(wldev, B43legacy_STAT_UNINIT);
	wldev->bad_frames_preempt = modparam_bad_frames_preempt;
	FUNC8(&wldev->isr_tasklet,
		     (void (*)(unsigned long))b43legacy_interrupt_tasklet,
		     (unsigned long)wldev);
	if (modparam_pio)
		wldev->__using_pio = true;
	FUNC0(&wldev->list);

	err = FUNC3(wldev);
	if (err)
		goto err_kfree_wldev;

	FUNC6(&wldev->list, &wl->devlist);
	wl->nr_devs++;
	FUNC7(dev, wldev);
	FUNC1(wldev);
out:
	return err;

err_kfree_wldev:
	FUNC4(wldev);
	return err;
}