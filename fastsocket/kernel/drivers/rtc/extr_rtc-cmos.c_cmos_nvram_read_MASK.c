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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {scalar_t__ size; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ NVRAM_OFFSET ; 
 scalar_t__ can_bank2 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ssize_t
FUNC5(struct file *filp, struct kobject *kobj,
		struct bin_attribute *attr,
		char *buf, loff_t off, size_t count)
{
	int	retval;

	if (FUNC4(off >= attr->size))
		return 0;
	if (FUNC4(off < 0))
		return -EINVAL;
	if ((off + count) > attr->size)
		count = attr->size - off;

	off += NVRAM_OFFSET;
	FUNC2(&rtc_lock);
	for (retval = 0; count; count--, off++, retval++) {
		if (off < 128)
			*buf++ = FUNC0(off);
		else if (can_bank2)
			*buf++ = FUNC1(off);
		else
			break;
	}
	FUNC3(&rtc_lock);

	return retval;
}