#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; int /*<<< orphan*/ * connections; } ;
typedef  TYPE_1__ TrackerServerInfo ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC1(TrackerServerInfo *pServer1,
        TrackerServerInfo *pServer2)
{
	ConnectionInfo *conn;
	ConnectionInfo *end;

    if (pServer1->count == 1)
    {
        return FUNC0(pServer2, pServer1->connections + 0);
    }
    else if (pServer1->count == 2)
    {
        if (FUNC0(pServer2, pServer1->connections + 0))
        {
            return true;
        }
        return FUNC0(pServer2, pServer1->connections + 1);
    }

	end = pServer1->connections + pServer1->count;
	for (conn=pServer1->connections; conn<end; conn++)
    {
		if (FUNC0(pServer2, conn))
        {
            return true;
        }
    }

    return false;
}