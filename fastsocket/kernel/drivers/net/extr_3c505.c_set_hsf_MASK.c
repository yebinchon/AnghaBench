#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ elp_device ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int HSF_PCB_MASK ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct net_device *dev, int hsf)
{
	elp_device *adapter = FUNC1(dev);
	unsigned long flags;

	FUNC3(&adapter->lock, flags);
	FUNC2((FUNC0(dev) & ~HSF_PCB_MASK) | hsf, dev);
	FUNC4(&adapter->lock, flags);
}