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
struct TYPE_2__ {int leader_index; int /*<<< orphan*/ * servers; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ g_if_leader_self ; 
 TYPE_1__ g_tracker_servers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC3()
{
	int result;
	int leader_index;
	TrackerServerInfo *pTrackerServer;
    ConnectionInfo *conn;

	if (g_if_leader_self)
	{
		return 0;  //do not need ping myself
	}

	leader_index = g_tracker_servers.leader_index;
	if (leader_index < 0)
	{
		return EINVAL;
	}

	pTrackerServer = g_tracker_servers.servers + leader_index;
    if ((conn=FUNC2(pTrackerServer, &result)) == NULL)
    {
        return result;
	}

	result = FUNC0(conn);
    FUNC1(conn, result != 0);
	return result;
}