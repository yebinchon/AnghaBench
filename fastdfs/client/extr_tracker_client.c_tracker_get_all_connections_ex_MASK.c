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
struct TYPE_3__ {int server_count; int /*<<< orphan*/ * servers; } ;
typedef  TYPE_1__ TrackerServerGroup ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 

int FUNC2(TrackerServerGroup *pTrackerGroup)
{
	TrackerServerInfo *pServer;
	TrackerServerInfo *pEnd;
    ConnectionInfo *conn;
    int result;
	int success_count;

	success_count = 0;
	pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
	for (pServer=pTrackerGroup->servers; pServer<pEnd; pServer++)
	{
		if ((conn=FUNC1(pServer, &result)) != NULL)
		{
			FUNC0(conn);
			success_count++;
		}
	}

	return success_count > 0 ? 0 : ENOTCONN;
}