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
struct TYPE_2__ {unsigned long timer_expires; int /*<<< orphan*/  lock; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct device *dev = (struct device *)data;
	unsigned long flags;
	unsigned long expires;

	FUNC1(&dev->power.lock, flags);

	expires = dev->power.timer_expires;
	/* If 'expire' is after 'jiffies' we've been called too early. */
	if (expires > 0 && !FUNC3(expires, jiffies)) {
		dev->power.timer_expires = 0;
		FUNC0(dev);
	}

	FUNC2(&dev->power.lock, flags);
}