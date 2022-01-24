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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct cp_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  cpcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CpCmd ; 
 int /*<<< orphan*/  RxChkSum ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cp_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, u32 data)
{
	struct cp_private *cp = FUNC1(dev);
	u16 cmd = cp->cpcmd, newcmd;

	newcmd = cmd;

	if (data)
		newcmd |= RxChkSum;
	else
		newcmd &= ~RxChkSum;

	if (newcmd != cmd) {
		unsigned long flags;

		FUNC2(&cp->lock, flags);
		cp->cpcmd = newcmd;
		FUNC0(CpCmd, newcmd);
		FUNC3(&cp->lock, flags);
	}

	return 0;
}