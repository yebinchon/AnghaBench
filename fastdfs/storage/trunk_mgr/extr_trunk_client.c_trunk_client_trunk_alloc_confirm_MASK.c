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
typedef  int /*<<< orphan*/  TrackerServerInfo ;
typedef  int /*<<< orphan*/  FDFSTrunkFullInfo ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 scalar_t__ g_if_trunker_self ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int const) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int const) ; 

int FUNC4(const FDFSTrunkFullInfo *pTrunkInfo, \
		const int status)
{
	int result;
	TrackerServerInfo trunk_server;
	ConnectionInfo *pTrunkServer;

	if (g_if_trunker_self)
	{
		return FUNC1(pTrunkInfo, status);
	}

    if ((result=FUNC2(&trunk_server,
                    &pTrunkServer, "trunk alloc confirm fail")) != 0)
    {
        return result;
    }

	result = FUNC3(pTrunkServer, \
			pTrunkInfo, status);

	FUNC0(pTrunkServer, result != 0);
	return result;
}