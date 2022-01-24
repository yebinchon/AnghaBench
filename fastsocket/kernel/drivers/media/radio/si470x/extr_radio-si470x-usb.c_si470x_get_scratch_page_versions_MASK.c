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
struct si470x_device {unsigned char software_version; unsigned char hardware_version; TYPE_1__* intf; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char SCRATCH_REPORT ; 
 int SCRATCH_REPORT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct si470x_device*,void*,int) ; 

__attribute__((used)) static int FUNC2(struct si470x_device *radio)
{
	unsigned char buf[SCRATCH_REPORT_SIZE];
	int retval;

	buf[0] = SCRATCH_REPORT;

	retval = FUNC1(radio, (void *) &buf, sizeof(buf));

	if (retval < 0)
		FUNC0(&radio->intf->dev, "si470x_get_scratch: "
			"si470x_get_report returned %d\n", retval);
	else {
		radio->software_version = buf[1];
		radio->hardware_version = buf[2];
	}

	return (retval < 0) ? -EINVAL : 0;
}