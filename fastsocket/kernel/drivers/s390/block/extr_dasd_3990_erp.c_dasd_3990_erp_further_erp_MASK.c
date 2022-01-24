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
struct dasd_ccw_req {scalar_t__ function; int /*<<< orphan*/  status; int /*<<< orphan*/  irb; struct dasd_device* startdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 char DASD_SENSE_BIT_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_ccw_req*,int) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC3 (struct dasd_ccw_req*) ; 
 scalar_t__ dasd_3990_erp_action_4 ; 
 scalar_t__ dasd_3990_erp_action_5 ; 
 scalar_t__ dasd_3990_erp_bus_out ; 
 struct dasd_ccw_req* FUNC4 (struct dasd_ccw_req*,char*) ; 
 scalar_t__ dasd_3990_erp_compound_code ; 
 scalar_t__ dasd_3990_erp_compound_config ; 
 scalar_t__ dasd_3990_erp_compound_path ; 
 scalar_t__ dasd_3990_erp_compound_retry ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,struct dasd_ccw_req*) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC7(struct dasd_ccw_req *erp)
{

	struct dasd_device *device = erp->startdev;
	char *sense = FUNC5(&erp->irb);

	/* check for 24 byte sense ERP */
	if ((erp->function == dasd_3990_erp_bus_out) ||
	    (erp->function == dasd_3990_erp_action_1) ||
	    (erp->function == dasd_3990_erp_action_4)) {

		erp = FUNC2(erp);

	} else if (erp->function == dasd_3990_erp_action_1_sec) {
		erp = FUNC3(erp);
	} else if (erp->function == dasd_3990_erp_action_5) {

		/* retries have not been successful */
		/* prepare erp for retry on different channel path */
		erp = FUNC2(erp);

		if (sense && !(sense[2] & DASD_SENSE_BIT_0)) {

			/* issue a Diagnostic Control command with an
			 * Inhibit Write subcommand */

			switch (sense[25]) {
			case 0x17:
			case 0x57:{	/* controller */
					erp = FUNC1(erp, 0x20);
					break;
				}
			case 0x18:
			case 0x58:{	/* channel path */
					erp = FUNC1(erp, 0x40);
					break;
				}
			case 0x19:
			case 0x59:{	/* storage director */
					erp = FUNC1(erp, 0x80);
					break;
				}
			default:
				FUNC0(DBF_WARNING, device,
					    "invalid subcommand modifier 0x%x "
					    "for Diagnostic Control Command",
					    sense[25]);
			}
		}

		/* check for 32 byte sense ERP */
	} else if (sense &&
		   ((erp->function == dasd_3990_erp_compound_retry) ||
		    (erp->function == dasd_3990_erp_compound_path) ||
		    (erp->function == dasd_3990_erp_compound_code) ||
		    (erp->function == dasd_3990_erp_compound_config))) {

		erp = FUNC4(erp, sense);

	} else {
		/*
		 * No retry left and no additional special handling
		 * necessary
		 */
		FUNC6(&device->cdev->dev,
			"ERP %p has run out of retries and failed\n", erp);

		erp->status = DASD_CQR_FAILED;
	}

	return erp;

}