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
typedef  int /*<<< orphan*/  TrackerServerInfo ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int TRACKER_SYS_FILE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(TrackerServerInfo *pTrackerServer)
{
	ConnectionInfo *conn;
	int result;
	int index;

    FUNC0(pTrackerServer);
	if ((conn=FUNC2(pTrackerServer, &result)) == NULL)
	{
		return result;
	}

	if ((result=FUNC4(conn)) != 0)
	{
		FUNC1(conn, true);
		return result;
	}

	for (index=0; index<TRACKER_SYS_FILE_COUNT; index++)
	{
		result = FUNC5(conn, index);
		if (result != 0)
		{
			break;
		}
	}

	result = FUNC3(conn);
	FUNC1(conn, result != 0);

	return result;
}