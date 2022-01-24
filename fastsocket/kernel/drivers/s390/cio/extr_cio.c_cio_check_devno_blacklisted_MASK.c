#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct subchannel {TYPE_3__ schid; TYPE_2__ schib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct subchannel *sch)
{
	if (FUNC1(sch->schid.ssid, sch->schib.pmcw.dev)) {
		/*
		 * This device must not be known to Linux. So we simply
		 * say that there is no device and return ENODEV.
		 */
		FUNC0(6, "Blacklisted device detected "
			      "at devno %04X, subchannel set %x\n",
			      sch->schib.pmcw.dev, sch->schid.ssid);
		return -ENODEV;
	}
	return 0;
}