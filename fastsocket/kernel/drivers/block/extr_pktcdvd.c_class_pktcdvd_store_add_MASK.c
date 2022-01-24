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
struct class {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct class *c, const char *buf,
					size_t count)
{
	unsigned int major, minor;

	if (FUNC3(buf, "%u:%u", &major, &minor) == 2) {
		/* pkt_setup_dev() expects caller to hold reference to self */
		if (!FUNC4(THIS_MODULE))
			return -ENODEV;

		FUNC2(FUNC0(major, minor), NULL);

		FUNC1(THIS_MODULE);

		return count;
	}

	return -EINVAL;
}