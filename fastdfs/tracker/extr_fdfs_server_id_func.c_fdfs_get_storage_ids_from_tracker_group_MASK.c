#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TrackerServerInfo ;
struct TYPE_3__ {int server_count; int leader_index; int /*<<< orphan*/ * servers; } ;
typedef  TYPE_1__ TrackerServerGroup ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(TrackerServerGroup *pTrackerGroup)
{
	TrackerServerInfo *pGServer;
	TrackerServerInfo *pTServer;
	TrackerServerInfo *pServerStart;
	TrackerServerInfo *pServerEnd;
	TrackerServerInfo trackerServer;
	int result;
	int leader_index;
	int i;

	pTServer = &trackerServer;
	pServerEnd = pTrackerGroup->servers + pTrackerGroup->server_count;

	leader_index = pTrackerGroup->leader_index;
	if (leader_index >= 0)
	{
		pServerStart = pTrackerGroup->servers + leader_index;
	}
	else
	{
		pServerStart = pTrackerGroup->servers;
	}

	result = ENOENT;
	for (i=0; i<5; i++)
	{
		for (pGServer=pServerStart; pGServer<pServerEnd; pGServer++)
		{
			FUNC2(pTServer, pGServer, sizeof(TrackerServerInfo));
            FUNC1(pTServer);
			result = FUNC0(pTServer);
			if (result == 0)
			{
				return result;
			}
		}

		if (pServerStart != pTrackerGroup->servers)
		{
			pServerStart = pTrackerGroup->servers;
		}
		FUNC3(1);
	}

	return result;
}