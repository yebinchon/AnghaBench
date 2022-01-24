#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  log_level; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int /*<<< orphan*/  FDFS_GROUP_NAME_MAX_LEN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 char* FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 TYPE_1__ g_log_context ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*) ; 

int FUNC11(int argc, char *argv[])
{
	char *conf_filename;
	char *local_filename;
	char group_name[FDFS_GROUP_NAME_MAX_LEN + 1];
	ConnectionInfo *pTrackerServer;
	int result;
	int store_path_index;
	ConnectionInfo storageServer;
	char file_id[128];
	
	if (argc < 3)
	{
		FUNC6("Usage: %s <config_file> <local_filename>\n", argv[0]);
		return 1;
	}

	FUNC5();
	g_log_context.log_level = LOG_ERR;
	FUNC4();

	conf_filename = argv[1];
	if ((result=FUNC2(conf_filename)) != 0)
	{
		return result;
	}

	pTrackerServer = FUNC9();
	if (pTrackerServer == NULL)
	{
		FUNC1();
		return errno != 0 ? errno : ECONNREFUSED;
	}


	*group_name = '\0';
	store_path_index = 0;
	if ((result=FUNC10(pTrackerServer, \
	                &storageServer, group_name, &store_path_index)) != 0)
	{
		FUNC1();
		FUNC3(stderr, "tracker_query_storage fail, " \
			"error no: %d, error info: %s\n", \
			result, FUNC0(result));
		return result;
	}

	local_filename = argv[2];
	result = FUNC7(pTrackerServer, \
			&storageServer, store_path_index, \
			local_filename, NULL, \
			NULL, 0, group_name, file_id);
	if (result != 0)
	{
		FUNC3(stderr, "upload file fail, " \
			"error no: %d, error info: %s\n", \
			result, FUNC0(result));

		FUNC8(pTrackerServer, true);
		FUNC1();
		return result;
	}

	FUNC6("%s\n", file_id);

	FUNC8(pTrackerServer, true);
	FUNC1();

	return 0;
}