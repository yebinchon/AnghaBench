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
 int errno ; 
 int FUNC0 (int,unsigned int,unsigned long) ; 

int FUNC1(int fd, unsigned int cmd, unsigned long arg)
{
	int err;

	err = FUNC0(fd, cmd, arg);
	if (err < 0)
		return -errno;

	return err;
}