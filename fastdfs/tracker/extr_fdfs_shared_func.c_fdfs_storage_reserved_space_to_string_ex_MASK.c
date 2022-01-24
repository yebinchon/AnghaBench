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
 int const TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int const,...) ; 

const char *FUNC1(const bool flag, \
	const int space_mb, const int total_mb, const double space_ratio, \
	char *buff)
{
	if (flag == TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB)
	{
		FUNC0(buff, "%d MB", space_mb);
	}
	else
	{
		FUNC0(buff, "%d MB(%.2f%%)", (int)(total_mb * space_ratio), \
			 100.00 * space_ratio);
	}

	return buff;
}