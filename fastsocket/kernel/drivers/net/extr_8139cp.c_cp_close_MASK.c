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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct cp_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cp_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11 (struct net_device *dev)
{
	struct cp_private *cp = FUNC4(dev);
	unsigned long flags;

	FUNC3(&cp->napi);

	if (FUNC6(cp))
		FUNC8("%s: disabling interface\n", dev->name);

	FUNC9(&cp->lock, flags);

	FUNC7(dev);
	FUNC5(dev);

	FUNC1(cp);

	FUNC10(&cp->lock, flags);

	FUNC2(dev->irq, dev);

	FUNC0(cp);
	return 0;
}