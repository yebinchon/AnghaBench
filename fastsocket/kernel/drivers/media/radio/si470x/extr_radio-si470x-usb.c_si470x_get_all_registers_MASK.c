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
 unsigned char ENTIRE_REPORT ; 
 int ENTIRE_REPORT_SIZE ; 
 unsigned char RADIO_REGISTER_NUM ; 
 unsigned char RADIO_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (struct si470x_device*,void*,int) ; 

__attribute__((used)) static int FUNC2(struct si470x_device *radio)
{
	unsigned char buf[ENTIRE_REPORT_SIZE];
	int retval;
	unsigned char regnr;

	buf[0] = ENTIRE_REPORT;

	retval = FUNC1(radio, (void *) &buf, sizeof(buf));

	if (retval >= 0)
		for (regnr = 0; regnr < RADIO_REGISTER_NUM; regnr++)
			radio->registers[regnr] = FUNC0(
				&buf[regnr * RADIO_REGISTER_SIZE + 1]);

	return (retval < 0) ? -EINVAL : 0;
}