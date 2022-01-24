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
struct ipath_devdata {int /*<<< orphan*/  ipath_sendctrl_lock; TYPE_1__* ipath_kregs; int /*<<< orphan*/  ipath_sendctrl; int /*<<< orphan*/  verbs_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_sendctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFINIPATH_S_PIOINTBUFAVAIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ipath_devdata *dd)
{
	unsigned long flags;
	int ret;

	ret = FUNC0(dd->verbs_dev);
	if (ret > 0)
		goto set;

	return;
set:
	FUNC3(&dd->ipath_sendctrl_lock, flags);
	dd->ipath_sendctrl |= INFINIPATH_S_PIOINTBUFAVAIL;
	FUNC2(dd, dd->ipath_kregs->kr_sendctrl,
			 dd->ipath_sendctrl);
	FUNC1(dd, dd->ipath_kregs->kr_scratch);
	FUNC4(&dd->ipath_sendctrl_lock, flags);
}