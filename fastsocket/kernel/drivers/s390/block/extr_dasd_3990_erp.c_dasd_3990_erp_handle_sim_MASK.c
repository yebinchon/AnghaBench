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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char DASD_SIM_LOG ; 
 char DASD_SIM_MSG_TO_OP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char,char,char,char) ; 

void
FUNC2(struct dasd_device *device, char *sense)
{
	/* print message according to log or message to operator mode */
	if ((sense[24] & DASD_SIM_MSG_TO_OP) || (sense[1] & 0x10)) {
		/* print SIM SRC from RefCode */
		FUNC0(&device->cdev->dev, "SIM - SRC: "
			    "%02x%02x%02x%02x\n", sense[22],
			    sense[23], sense[11], sense[12]);
	} else if (sense[24] & DASD_SIM_LOG) {
		/* print SIM SRC Refcode */
		FUNC1(&device->cdev->dev, "log SIM - SRC: "
			    "%02x%02x%02x%02x\n", sense[22],
			    sense[23], sense[11], sense[12]);
	}
}