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
struct si470x_device {int /*<<< orphan*/ * registers; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char FUNC0 (int) ; 
 int REGISTER_REPORT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int FUNC2 (struct si470x_device*,void*,int) ; 

int FUNC3(struct si470x_device *radio, int regnr)
{
	unsigned char buf[REGISTER_REPORT_SIZE];
	int retval;

	buf[0] = FUNC0(regnr);

	retval = FUNC2(radio, (void *) &buf, sizeof(buf));

	if (retval >= 0)
		radio->registers[regnr] = FUNC1(&buf[1]);

	return (retval < 0) ? -EINVAL : 0;
}