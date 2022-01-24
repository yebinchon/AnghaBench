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
 int ECONNREFUSED ; 
 scalar_t__ errno ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/ * pTrackerServer ; 
 int /*<<< orphan*/ * FUNC1 () ; 

int FUNC2(const int proccess_index, const char *conf_filename)
{
	int result;
	if ((result=FUNC0(conf_filename)) != 0)
	{
		return result;
	}

	pTrackerServer = FUNC1();
	if (pTrackerServer == NULL)
	{
		return errno != 0 ? errno : ECONNREFUSED;
	}

	return 0;
}