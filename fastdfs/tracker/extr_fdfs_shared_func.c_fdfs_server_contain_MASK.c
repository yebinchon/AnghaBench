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
struct TYPE_3__ {int count; int /*<<< orphan*/ * connections; } ;
typedef  TYPE_1__ TrackerServerInfo ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int const) ; 

bool FUNC1(TrackerServerInfo *pServerInfo,
        const char *target_ip, const int target_port)
{
	ConnectionInfo *conn;
	ConnectionInfo *end;

    if (pServerInfo->count == 1)
    {
		return FUNC0(pServerInfo->connections[0],
                target_ip, target_port);
    }
    else if (pServerInfo->count == 2)
    {
		return FUNC0(pServerInfo->connections[0],
                target_ip, target_port) ||
            FUNC0(pServerInfo->connections[1],
                    target_ip, target_port);
    }

	end = pServerInfo->connections + pServerInfo->count;
	for (conn=pServerInfo->connections; conn<end; conn++)
    {
		if (FUNC0(*conn, target_ip, target_port))
        {
            return true;
        }
    }

    return false;
}