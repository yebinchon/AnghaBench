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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver * ddp,
				     const char * buf, size_t count)
{
	int delta_hosts;

	if (FUNC2(buf, "%d", &delta_hosts) != 1)
		return -EINVAL;
	if (delta_hosts > 0) {
		do {
			FUNC0();
		} while (--delta_hosts);
	} else if (delta_hosts < 0) {
		do {
			FUNC1();
		} while (++delta_hosts);
	}
	return count;
}