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
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ command; int /*<<< orphan*/  status; } ;
struct i596_private {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct i596_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, char *msg, int ct) {
	struct i596_private *lp;
	int boguscnt = ct;

	lp = FUNC1(dev);
	while (lp->scb.command) {
		if (--boguscnt == 0) {
			FUNC2("%s: %s timed out - stat %4.4x, cmd %4.4x\n",
			       dev->name, msg,
			       lp->scb.status, lp->scb.command);
			return 1;
		}
		FUNC3(5);
		FUNC0();
	}
	return 0;
}