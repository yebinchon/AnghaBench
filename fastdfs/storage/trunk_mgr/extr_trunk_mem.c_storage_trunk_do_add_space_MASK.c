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
typedef  int /*<<< orphan*/  FDFSTrunkFullInfo ;

/* Variables and functions */
 scalar_t__ g_trunk_init_check_occupying ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const FDFSTrunkFullInfo *pTrunkInfo)
{
	if (g_trunk_init_check_occupying)
	{
		if (FUNC0(pTrunkInfo))
		{
			return 0;
		}
	}

	/*	
	{
	char buff[256];
	trunk_info_dump(pTrunkInfo, buff, sizeof(buff));
	logInfo("add trunk info: %s", buff);
	}
	*/

	return FUNC1(pTrunkInfo);
}