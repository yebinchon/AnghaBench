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
struct bus_type {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct bus_type *bus,
				    const char *buf, size_t count)
{
	int flag, rc;

	if (FUNC2(buf, "%d\n", &flag) != 1)
		return -EINVAL;
	if (flag) {
		rc = FUNC0();
		if (rc)
			return rc;
	}
	else
		FUNC1();
	return count;
}