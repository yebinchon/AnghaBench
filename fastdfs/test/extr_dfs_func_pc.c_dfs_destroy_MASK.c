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
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  pTrackerServer ; 
 int storage_server_count ; 
 int /*<<< orphan*/ * storage_servers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3()
{
	ConnectionInfo *pEnd;
	ConnectionInfo *pServer;

	FUNC2(pTrackerServer);

	pEnd = storage_servers + storage_server_count;
	for (pServer=storage_servers; pServer<pEnd; pServer++)
	{
		FUNC0(pServer);
	}

	FUNC1();
}