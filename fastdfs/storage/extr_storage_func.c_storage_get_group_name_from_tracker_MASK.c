#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TrackerServerInfo ;
struct TYPE_2__ {int server_count; int /*<<< orphan*/ * servers; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ g_tracker_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC5()
{
	TrackerServerInfo *pTrackerServer;
	TrackerServerInfo *pServerEnd;
	ConnectionInfo *pTrackerConn;
	TrackerServerInfo tracker_server;
	int result;

	result = ENOENT;
	pServerEnd = g_tracker_group.servers + g_tracker_group.server_count;
	for (pTrackerServer=g_tracker_group.servers;
		pTrackerServer<pServerEnd; pTrackerServer++)
	{
		FUNC1(&tracker_server, pTrackerServer, sizeof(TrackerServerInfo));
        FUNC0(&tracker_server);
        if ((pTrackerConn=FUNC4(&tracker_server,
			&result)) == NULL)
		{
			continue;
		}

        result = FUNC2(pTrackerConn);
		FUNC3(pTrackerConn,
			result != 0 && result != ENOENT);
		if (result == 0)
		{
			return 0;
		}
	}

	return result;
}