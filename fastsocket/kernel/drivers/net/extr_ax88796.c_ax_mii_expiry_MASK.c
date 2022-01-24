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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ax_device {TYPE_1__ mii_timer; scalar_t__ running; int /*<<< orphan*/  mii_lock; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ax_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ax_device* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct net_device *dev = (struct net_device *)data;
	struct ax_device  *ax = FUNC5(dev);
	unsigned long flags;

	FUNC3(&ax->mii_lock, flags);
	FUNC1(&ax->mii, FUNC2(ax), 0);
	FUNC4(&ax->mii_lock, flags);

	if (ax->running) {
		ax->mii_timer.expires = jiffies + HZ*2;
		FUNC0(&ax->mii_timer);
	}
}