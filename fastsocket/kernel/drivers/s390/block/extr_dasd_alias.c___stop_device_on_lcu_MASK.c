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
struct dasd_device {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_SU ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dasd_device *device,
				 struct dasd_device *pos)
{
	/* If pos == device then device is already locked! */
	if (pos == device) {
		FUNC0(pos, DASD_STOPPED_SU);
		return;
	}
	FUNC2(FUNC1(pos->cdev));
	FUNC0(pos, DASD_STOPPED_SU);
	FUNC3(FUNC1(pos->cdev));
}