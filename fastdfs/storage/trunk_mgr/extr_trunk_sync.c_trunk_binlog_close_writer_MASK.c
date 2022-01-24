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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int trunk_binlog_fd ; 
 int FUNC1 (int const) ; 
 scalar_t__ trunk_binlog_write_cache_len ; 

__attribute__((used)) static int FUNC2(const bool needLock)
{
	int result;
	if (trunk_binlog_write_cache_len > 0)
	{
		if ((result=FUNC1(needLock)) != 0)
		{
			return result;
		}
	}
	FUNC0(trunk_binlog_fd);
	trunk_binlog_fd = -1;
	return 0;
}