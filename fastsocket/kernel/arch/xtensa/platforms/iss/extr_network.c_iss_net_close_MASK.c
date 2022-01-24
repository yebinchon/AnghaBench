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
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct iss_net_private*) ;} ;
struct iss_net_private {int /*<<< orphan*/  lock; TYPE_1__ tp; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iss_net_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  opened ; 
 int /*<<< orphan*/  opened_lock ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iss_net_private*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct iss_net_private *lp = FUNC2(dev);
FUNC4("iss_net_close!\n");
	FUNC3(dev);
	FUNC5(&lp->lock);

	FUNC5(&opened_lock);
	FUNC1(&opened);
	FUNC6(&opened_lock);

	FUNC0(&lp->timer);

	lp->tp.close(lp);

	FUNC6(&lp->lock);
	return 0;
}