#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ip_str ;
struct TYPE_6__ {TYPE_1__* connections; } ;
typedef  TYPE_2__ TrackerServerInfo ;
struct TYPE_7__ {int server_count; int leader_index; TYPE_2__* servers; } ;
struct TYPE_5__ {int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 TYPE_3__ g_tracker_servers ; 
 int FUNC1 (char*,int const,char*,int,...) ; 

__attribute__((used)) static int FUNC2(char *buff, const int buffSize)
{
	int total_len;
	TrackerServerInfo *pTrackerServer;
	TrackerServerInfo *pTrackerEnd;
    char ip_str[256];

	total_len = FUNC1(buff, buffSize, \
		"g_tracker_servers.server_count=%d, " \
		"g_tracker_servers.leader_index=%d\n", \
		g_tracker_servers.server_count, \
		g_tracker_servers.leader_index);
	if (g_tracker_servers.server_count == 0)
	{
		return total_len;
	}

	pTrackerEnd = g_tracker_servers.servers + g_tracker_servers.server_count;
	for (pTrackerServer=g_tracker_servers.servers; \
		pTrackerServer<pTrackerEnd; pTrackerServer++)
	{
        FUNC0(pTrackerServer, ip_str, sizeof(ip_str));

		total_len += FUNC1(buff + total_len, buffSize - total_len,
			"\t%d. tracker server=%s:%d\n", \
			(int)(pTrackerServer - g_tracker_servers.servers) + 1, \
			ip_str, pTrackerServer->connections[0].port);
	}

	return total_len;
}