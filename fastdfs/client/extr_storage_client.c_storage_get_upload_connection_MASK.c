#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ sock; } ;
typedef  TYPE_1__ ConnectionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int*) ; 
 int FUNC3 (TYPE_1__*,char*,TYPE_1__*,int*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,char*,int*) ; 

__attribute__((used)) static int FUNC5(ConnectionInfo *pTrackerServer, \
		ConnectionInfo **ppStorageServer, char *group_name, \
		ConnectionInfo *pNewStorage, int *store_path_index, \
		bool *new_connection)
{
	int result;
	bool new_tracker_connection;
	ConnectionInfo *pNewTracker;

	if (*ppStorageServer == NULL)
	{
		FUNC0(pTrackerServer, pNewTracker, result, \
			new_tracker_connection);
		if (*group_name == '\0')
		{
			result = FUNC4( \
				pNewTracker, pNewStorage, group_name, \
				store_path_index);
		}
		else
		{
			result = FUNC3( \
				pNewTracker, group_name, pNewStorage, \
				store_path_index);
		}

		if (new_tracker_connection)
		{
			FUNC1(pNewTracker, result != 0);
		}

		if (result != 0)
		{
			return result;
		}

		if ((*ppStorageServer=FUNC2(pNewStorage,
			&result)) == NULL)
		{
			return result;
		}

		*new_connection = true;
	}
	else
	{
		if ((*ppStorageServer)->sock >= 0)
		{
			*new_connection = false;
		}
		else
		{
			if ((*ppStorageServer=FUNC2(
				*ppStorageServer, &result)) == NULL)
			{
				return result;
			}

			*new_connection = true;
		}
	}

	return 0;
}