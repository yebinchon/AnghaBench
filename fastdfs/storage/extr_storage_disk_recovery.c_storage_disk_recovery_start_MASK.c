#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char** paths; } ;
struct TYPE_5__ {TYPE_1__* ips; } ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int EINTR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FDFS_STORAGE_STATUS_RECOVERY ; 
 int MAX_PATH_SIZE ; 
 scalar_t__ g_continue_flag ; 
 TYPE_3__ g_fdfs_store_paths ; 
 int /*<<< orphan*/  g_my_server_id_str ; 
 TYPE_2__ g_tracker_client_ip ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int const) ; 
 int FUNC6 (int /*<<< orphan*/ *,int const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(const int store_path_index)
{
	ConnectionInfo srcStorage;
	ConnectionInfo *pStorageConn;
	int result;
	char *pBasePath;

	pBasePath = g_fdfs_store_paths.paths[store_path_index];
	if ((result=FUNC3(pBasePath, false)) != 0)
	{
		return result;
	}

	if ((result=FUNC2(pBasePath)) != 0)
	{
		return result;
	}

	if ((result=FUNC1(&srcStorage)) != 0)
	{
		if (result == ENOENT)
		{
			return FUNC4(pBasePath);
		}
		else
		{
			return result;
		}
	}

	while (g_continue_flag)
	{
		if (FUNC7(g_my_server_id_str, \
			g_tracker_client_ip.ips[0].address,
            FDFS_STORAGE_STATUS_RECOVERY) == 0)
		{
			break;
		}
	}

	if (!g_continue_flag)
	{
		return EINTR;
	}

	if ((pStorageConn=FUNC9(&srcStorage, &result)) == NULL)
	{
		return result;
	}

	result = FUNC6(pStorageConn, store_path_index);
	FUNC8(pStorageConn, true);
	if (result != 0)
	{
		return result;
	}

	//set fetch binlog done
	if ((result=FUNC3(pBasePath, true)) != 0)
	{
		return result;
	}

	if ((result=FUNC5( \
			store_path_index)) != 0)
	{
		char markFullFilename[MAX_PATH_SIZE];
		FUNC10(FUNC0(pBasePath, markFullFilename));
		return result;
	}

	return 0;
}