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
struct s6gmac {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct s6gmac* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct s6gmac *pd = FUNC0(dev);
	unsigned long flags;
	FUNC2(&pd->lock, flags);
	FUNC1(dev);
	FUNC3(&pd->lock, flags);
}