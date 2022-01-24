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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,void*,int /*<<< orphan*/ ) ; 

int FUNC2(int pid, int fd, void *data)
{
	if (pid != FUNC0())
		return 0;

	FUNC1(-1, fd, -1, data, 0);
	return 1;
}