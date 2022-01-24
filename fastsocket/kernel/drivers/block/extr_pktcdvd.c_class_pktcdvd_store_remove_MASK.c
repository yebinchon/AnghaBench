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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct class *c, const char *buf,
					size_t count)
{
	unsigned int major, minor;
	if (FUNC2(buf, "%u:%u", &major, &minor) == 2) {
		FUNC1(FUNC0(major, minor));
		return count;
	}
	return -EINVAL;
}