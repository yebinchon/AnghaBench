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
struct b43_wldev {struct b43_wl* wl; } ;
struct b43_wl {int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_WAKE_THREAD ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	struct b43_wl *wl = dev->wl;
	irqreturn_t ret;

	FUNC2(&wl->mutex);

	ret = FUNC0(dev);
	if (ret == IRQ_WAKE_THREAD)
		FUNC1(dev);

	FUNC3(&wl->mutex);
}