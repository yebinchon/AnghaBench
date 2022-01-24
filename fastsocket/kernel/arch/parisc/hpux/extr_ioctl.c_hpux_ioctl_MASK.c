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
 int EOPNOTSUPP ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (int,unsigned long,unsigned long) ; 
 int FUNC2 (int,unsigned long,unsigned long) ; 

int FUNC3(int fd, unsigned long cmd, unsigned long arg)
{
	int result = -EOPNOTSUPP;
	int type = FUNC0(cmd);
	switch (type) {
	case 'T':
		/* Our structures are now compatible with HPUX's */
		result = FUNC2(fd, cmd, arg);
		break;
	case 't':
		result = FUNC1(fd, cmd, arg);
		break;
	}
	return result;
}