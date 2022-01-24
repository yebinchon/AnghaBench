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
struct TYPE_3__ {int index; int count; int /*<<< orphan*/ * connections; } ;
typedef  TYPE_1__ TrackerServerInfo ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 

ConnectionInfo *FUNC1(TrackerServerInfo *pServerInfo,
		const int connect_timeout, int *err_no)
{
	ConnectionInfo *conn;
	ConnectionInfo *end;
	ConnectionInfo *c;
    int current_index;

    c = FUNC0(pServerInfo->connections + pServerInfo->index, err_no);
    if (c != NULL)
    {
        return c;
    }
    if (pServerInfo->count == 1)
    {
        return NULL;
    }

	end = pServerInfo->connections + pServerInfo->count;
	for (conn=pServerInfo->connections; conn<end; conn++)
    {
        current_index = conn - pServerInfo->connections;
        if (current_index != pServerInfo->index)
        {
            if ((c=FUNC0(conn, err_no)) != NULL)
            {
                pServerInfo->index = current_index;
                return c;
            }
        }
    }

    return NULL;
}