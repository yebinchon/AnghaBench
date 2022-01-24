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
struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 char SNS1_PERM_ERR ; 
 char SNS2_CORRECTABLE ; 
 char SNS2_ENV_DATA_PRESENT ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_ccw_req*,char*) ; 
 struct dasd_ccw_req* FUNC3 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC6(struct dasd_ccw_req * erp, char *sense)
{

	struct dasd_device *device = erp->startdev;

	erp->function = dasd_3990_erp_data_check;

	if (sense[2] & SNS2_CORRECTABLE) {	/* correctable data check */

		/* issue message that the data has been corrected */
		FUNC4(&device->cdev->dev,
			    "Data recovered during retry with PCI "
			    "fetch mode active\n");

		/* not possible to handle this situation in Linux */
		FUNC5("No way to inform application about the possibly "
		      "incorrect data");

	} else if (sense[2] & SNS2_ENV_DATA_PRESENT) {

		FUNC0(DBF_WARNING, device, "%s",
			    "Uncorrectable data check recovered secondary "
			    "addr of duplex pair");

		erp = FUNC2(erp, sense);

	} else if (sense[1] & SNS1_PERM_ERR) {

		FUNC0(DBF_WARNING, device, "%s",
			    "Uncorrectable data check with internal "
			    "retry exhausted");

		erp = FUNC1(erp);

	} else {
		/* all other data checks */
		FUNC0(DBF_WARNING, device, "%s",
			    "Uncorrectable data check with retry count "
			    "exhausted...");

		erp = FUNC3(erp);
	}

	return erp;

}