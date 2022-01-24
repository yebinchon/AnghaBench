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
 int FUNC0 (int*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int FUNC1 (int) ; 
 int* ioctl_table ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline int FUNC3(int *cmd, int *size)
{
	int i;

	for (i = 0; i < FUNC0(ioctl_table); i++) {
		if ((*cmd & 0xffff) == (ioctl_table[i] & 0xffff)) {
			*size = FUNC1(*cmd);
			*cmd = ioctl_table[i];
			if (*size > FUNC1(*cmd)) {
				FUNC2("ioctl not yet supported\n");
				return -EFAULT;
			}
			return 0;
		}
	}
	return -EINVAL;
}