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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC1(const char *buf, size_t count)
{
	if (count != 0) {
		if (buf[0] == '1')
			return 1;
		if (buf[0] == '0')
			return 0;
		if (count >= 4 && FUNC0(buf, "true", 4) == 0)
			return 1;
		if (count >= 5 && FUNC0(buf, "false", 5) == 0)
			return 0;
		if (count >= 3 && FUNC0(buf, "yes", 3) == 0)
			return 1;
		if (count >= 2 && FUNC0(buf, "no", 2) == 0)
			return 0;
		if (count >= 2 && FUNC0(buf, "on", 2) == 0)
			return 1;
		if (count >= 3 && FUNC0(buf, "off", 3) == 0)
			return 0;
	}
	return -EINVAL;
}