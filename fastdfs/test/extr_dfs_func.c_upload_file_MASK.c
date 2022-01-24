#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ip_addr; } ;
typedef  TYPE_1__ ConnectionInfo ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int /*<<< orphan*/  FDFS_GROUP_NAME_MAX_LEN ; 
 scalar_t__ errno ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*,int,char const*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int*) ; 
 int FUNC6 (TYPE_1__*,TYPE_1__*,char*,int*) ; 

int FUNC7(const char *file_buff, const int file_size, char *file_id, char *storage_ip)
{
	int result;
	int store_path_index;
	char group_name[FDFS_GROUP_NAME_MAX_LEN + 1];
	ConnectionInfo *pTrackerServer;
	ConnectionInfo *pStorageServer;
	ConnectionInfo storageServer;

	pTrackerServer = FUNC4();
	if (pTrackerServer == NULL)
	{
		return errno != 0 ? errno : ECONNREFUSED;
	}

	*group_name = '\0';
	if ((result=FUNC6(pTrackerServer, &storageServer,
			 group_name, &store_path_index)) != 0)
	{
		FUNC3(pTrackerServer, true);
		return result;
	}

	if ((pStorageServer=FUNC5(&storageServer, &result)) \
			 == NULL)
	{
		FUNC2(pTrackerServer);
		return result;
	}

	FUNC1(storage_ip, storageServer.ip_addr);
	result = FUNC0(pTrackerServer, pStorageServer, 
		store_path_index, file_buff, file_size, NULL, NULL, 0, "", file_id);

	FUNC2(pTrackerServer);
	FUNC2(pStorageServer);

	return result;
}