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
 scalar_t__ g_current_time ; 
 scalar_t__ g_trunk_compress_binlog_min_interval ; 
 scalar_t__ g_trunk_last_compress_time ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7()
{
	int result;

	if (!(g_trunk_compress_binlog_min_interval > 0 && \
		g_current_time - g_trunk_last_compress_time >
		g_trunk_compress_binlog_min_interval))
	{
		return FUNC1();
	}

	FUNC0("start compress trunk binlog ...");
	if ((result=FUNC3()) != 0)
	{
		return result;
	}

	if ((result=FUNC1()) != 0)
	{
		FUNC5();
		return result;
	}

	if ((result=FUNC4()) != 0)
	{
		FUNC5();
		return result;
	}

	g_trunk_last_compress_time = g_current_time;
	FUNC2();

	FUNC0("compress trunk binlog done.");
	return FUNC6();  //because the binlog file be compressed
}