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
 int FUNC0 (int,void*,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(int fd, void *buf, int offset, int len)
{
	int err;

	err = FUNC1(fd, offset);
	if (err < 0)
		return err;

	err = FUNC0(fd, buf, len);
	if (err < 0)
		return err;

	return 0;
}