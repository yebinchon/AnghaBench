#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int opm; } ;
struct dasd_device {TYPE_6__* cdev; TYPE_1__ path_data; } ;
struct TYPE_9__ {int lpum; } ;
struct TYPE_10__ {TYPE_2__ sublog; } ;
struct TYPE_11__ {TYPE_3__ esw0; } ;
struct TYPE_12__ {TYPE_4__ esw; } ;
struct dasd_ccw_req {int lpm; int retries; int /*<<< orphan*/  status; TYPE_5__ irb; struct dasd_device* startdev; } ;
typedef  int __u8 ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,int,int,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct dasd_ccw_req * erp)
{
	struct dasd_device *device = erp->startdev;
	__u8 opm;
	unsigned long flags;

	/* try alternate valid path */
	FUNC4(FUNC3(device->cdev), flags);
	opm = FUNC1(device->cdev);
	FUNC5(FUNC3(device->cdev), flags);
	if (erp->lpm == 0)
		erp->lpm = device->path_data.opm &
			~(erp->irb.esw.esw0.sublog.lpum);
	else
		erp->lpm &= ~(erp->irb.esw.esw0.sublog.lpum);

	if ((erp->lpm & opm) != 0x00) {

		FUNC0(DBF_WARNING, device,
			    "try alternate lpm=%x (lpum=%x / opm=%x)",
			    erp->lpm, erp->irb.esw.esw0.sublog.lpum, opm);

		/* reset status to submit the request again... */
		erp->status = DASD_CQR_FILLED;
		erp->retries = 10;
	} else {
		FUNC2(&device->cdev->dev,
			"The DASD cannot be reached on any path (lpum=%x"
			"/opm=%x)\n", erp->irb.esw.esw0.sublog.lpum, opm);

		/* post request with permanent error */
		erp->status = DASD_CQR_FAILED;
	}
}