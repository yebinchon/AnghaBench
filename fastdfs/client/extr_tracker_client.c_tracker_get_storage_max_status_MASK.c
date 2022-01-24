#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TrackerServerInfo ;
struct TYPE_6__ {int server_count; int /*<<< orphan*/ * servers; } ;
typedef  TYPE_1__ TrackerServerGroup ;
struct TYPE_7__ {int status; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ FDFSStorageBrief ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*,TYPE_2__*) ; 

int FUNC7(TrackerServerGroup *pTrackerGroup, \
		const char *group_name, const char *ip_addr, \
		char *storage_id, int *status)
{
	ConnectionInfo *conn;
	TrackerServerInfo tracker_server;
	TrackerServerInfo *pServer;
	TrackerServerInfo *pEnd;
	FDFSStorageBrief storage_brief;
	int result;

	FUNC2(&storage_brief, 0, sizeof(FDFSStorageBrief));
	storage_brief.status = -1;

	*storage_id = '\0';
	*status = -1;
	pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
	for (pServer=pTrackerGroup->servers; pServer<pEnd; pServer++)
	{
		FUNC1(&tracker_server, pServer, sizeof(TrackerServerInfo));
        FUNC0(&tracker_server);
		if ((conn=FUNC5(&tracker_server, &result)) == NULL)
		{
			return result;
		}

		result = FUNC6(conn, group_name, \
				ip_addr, &storage_brief);
		FUNC4(conn, result != 0);

		if (result != 0)
		{
			if (result == ENOENT)
			{
				continue;
			}
			return result;
		}

		FUNC3(storage_id, storage_brief.id);
		if (storage_brief.status > *status)
		{
			*status = storage_brief.status;
		}
	}

	if (*status == -1)
	{
		return ENOENT;
	}

	return 0;
}