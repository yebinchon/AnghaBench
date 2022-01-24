#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct subchannel {TYPE_2__ dev; struct chsc_private* private; TYPE_1__ schid; int /*<<< orphan*/  isc; } ;
struct chsc_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  CHSC_SCH_ISC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct chsc_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct chsc_private* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct subchannel *sch)
{
	struct chsc_private *private;
	int ret;

	FUNC0(6, "Detected chsc subchannel 0.%x.%04x\n",
		 sch->schid.ssid, sch->schid.sch_no);
	sch->isc = CHSC_SCH_ISC;
	private = FUNC6(sizeof(*private), GFP_KERNEL);
	if (!private)
		return -ENOMEM;
	ret = FUNC1(sch, (u32)(unsigned long)sch);
	if (ret) {
		FUNC0(0, "Failed to enable 0.%x.%04x: %d\n",
			 sch->schid.ssid, sch->schid.sch_no, ret);
		FUNC4(private);
	} else {
		sch->private = private;
		if (FUNC2(&sch->dev)) {
			FUNC3(&sch->dev, 0);
			FUNC5(&sch->dev.kobj, KOBJ_ADD);
		}
	}
	return ret;
}