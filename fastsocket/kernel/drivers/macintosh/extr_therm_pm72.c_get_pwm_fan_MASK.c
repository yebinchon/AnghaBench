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
struct TYPE_2__ {scalar_t__ type; int id; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int FCU_FAN_ABSENT_ID ; 
 scalar_t__ FCU_FAN_PWM ; 
 int FUNC0 (int,unsigned char*,int) ; 
 TYPE_1__* fcu_fans ; 

__attribute__((used)) static int FUNC1(int fan_index)
{
	unsigned char failure;
	unsigned char active;
	unsigned char buf[2];
	int rc, id;

	if (fcu_fans[fan_index].type != FCU_FAN_PWM)
		return -EINVAL;
	id = fcu_fans[fan_index].id; 
	if (id == FCU_FAN_ABSENT_ID)
		return -EINVAL;

	rc = FUNC0(0x2b, &failure, 1);
	if (rc != 1)
		return -EIO;
	if ((failure & (1 << id)) != 0)
		return -EFAULT;
	rc = FUNC0(0x2d, &active, 1);
	if (rc != 1)
		return -EIO;
	if ((active & (1 << id)) == 0)
		return -ENXIO;

	/* Programmed value or real current speed */
	rc = FUNC0(0x30 + (id * 2), buf, 1);
	if (rc != 1)
		return -EIO;

	return (buf[0] * 1000) / 2559;
}