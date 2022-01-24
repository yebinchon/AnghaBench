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
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* FUNC1 (char**) ; 
 int FUNC2 (char*,char*,int*,int*) ; 

__attribute__((used)) static int FUNC3(char *buf)
{
	char *cmd;
	int i, v;

	while ((cmd = FUNC1(&buf))) {
		if (FUNC2(cmd, "0x%x 0x%x", &i, &v) == 2) {
			/* i and v set */
		} else if (FUNC2(cmd, "0x%x %u", &i, &v) == 2) {
			/* i and v set */
		} else
			return -EINVAL;
		if (i >= 0 && i < 256 && v >= 0 && v < 256) {
			if (!FUNC0(i, v))
				return -EIO;
		} else
			return -EINVAL;
	}

	return 0;
}