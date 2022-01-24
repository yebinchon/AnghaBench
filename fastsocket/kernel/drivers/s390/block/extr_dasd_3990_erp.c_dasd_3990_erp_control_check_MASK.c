#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {TYPE_2__* refers; struct dasd_device* startdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  scsw; } ;
struct TYPE_4__ {TYPE_1__ irb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int SCHN_STAT_CHN_CTRL_CHK ; 
 int SCHN_STAT_INTF_CTRL_CHK ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC3(struct dasd_ccw_req *erp)
{
	struct dasd_device *device = erp->startdev;

	if (FUNC2(&erp->refers->irb.scsw) & (SCHN_STAT_INTF_CTRL_CHK
					   | SCHN_STAT_CHN_CTRL_CHK)) {
		FUNC0(DBF_WARNING, device, "%s",
			    "channel or interface control check");
		erp = FUNC1(erp, NULL);
	}
	return erp;
}