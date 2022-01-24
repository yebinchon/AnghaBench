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
struct ns83820 {int /*<<< orphan*/  misc_lock; scalar_t__ base; int /*<<< orphan*/  IMR_cache; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IHR ; 
 scalar_t__ IMR ; 
 int /*<<< orphan*/  ISR_RXDESC ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  ihr ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(unsigned long _dev)
{
	struct net_device *ndev = (void *)_dev;
	struct ns83820 *dev = FUNC0(ndev);
	FUNC2(ndev);
	FUNC5(ihr, dev->base + IHR);

	FUNC3(&dev->misc_lock);
	dev->IMR_cache |= ISR_RXDESC;
	FUNC5(dev->IMR_cache, dev->base + IMR);
	FUNC4(&dev->misc_lock);

	FUNC2(ndev);
	FUNC1(ndev);
}