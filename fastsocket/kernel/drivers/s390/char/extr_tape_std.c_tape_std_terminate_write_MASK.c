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
struct tape_device {scalar_t__ required_tapemarks; int /*<<< orphan*/  first_minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MTBSR ; 
 int /*<<< orphan*/  MTWEOF ; 
 int FUNC1 (struct tape_device*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct tape_device *device)
{
	int rc;

	if(device->required_tapemarks == 0)
		return 0;

	FUNC0(5, "tape%d: terminate write %dxEOF\n", device->first_minor,
		device->required_tapemarks);

	rc = FUNC1(device, MTWEOF, device->required_tapemarks);
	if (rc)
		return rc;

	device->required_tapemarks = 0;
	return FUNC1(device, MTBSR, 1);
}