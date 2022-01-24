#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  log_level; } ;
struct TYPE_10__ {char* ip_addr; int port; } ;
struct TYPE_9__ {int server_count; int server_index; scalar_t__ servers; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int FDFS_STORAGE_ID_MAX_SIZE ; 
 int /*<<< orphan*/  FDFS_TRACKER_SERVER_DEF_PORT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ RAND_MAX ; 
 char* FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_8__ g_log_context ; 
 TYPE_1__ g_tracker_group ; 
 int /*<<< orphan*/  h_errno ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__* pTrackerServer ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int) ; 
 int FUNC18 (TYPE_1__*,char*) ; 
 int FUNC19 (TYPE_1__*,char*,char*) ; 
 TYPE_2__* FUNC20 () ; 
 int FUNC21 (TYPE_1__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char**) ; 

int FUNC23(int argc, char *argv[])
{
	char *conf_filename;
	int result;
	char *op_type;
	char *tracker_server;
	int arg_index;
	char *group_name;

	if (argc < 2)
	{
		FUNC22(argv);
		return 1;
	}

	tracker_server = NULL;
	conf_filename = argv[1];
	arg_index = 2;

	if (arg_index >= argc)
	{
		op_type = "list";
	}
	else
	{
		int len;

		len = FUNC14(argv[arg_index]); 
		if (len >= 2 && FUNC15(argv[arg_index], "-h", 2) == 0)
		{
			if (len == 2)
			{
				arg_index++;
				if (arg_index >= argc)
				{
					FUNC22(argv);
					return 1;
				}

				tracker_server = argv[arg_index++];
			}
			else
			{
				tracker_server = argv[arg_index] + 2;
				arg_index++;
			}

			if (arg_index < argc)
			{
				op_type = argv[arg_index++];
			}
			else
			{
				op_type = "list";
			}
		}
		else
		{
			op_type = argv[arg_index++];
		}
	}

	FUNC9();
	g_log_context.log_level = LOG_DEBUG;
	FUNC6();

	if ((result=FUNC3(conf_filename)) != 0)
	{
		return result;
	}
	FUNC8(conf_filename);

	if (tracker_server == NULL)
	{
		if (g_tracker_group.server_count > 1)
		{
			FUNC12(FUNC16(NULL));
			FUNC11();  //discard the first
			g_tracker_group.server_index = (int)( \
				(g_tracker_group.server_count * (double)FUNC11()) \
				/ (double)RAND_MAX);
		}
	}
	else
	{
		int i;
        ConnectionInfo conn;

        if ((result=FUNC1(tracker_server, &conn,
                        FDFS_TRACKER_SERVER_DEF_PORT)) != 0)
		{
			FUNC10("resolve ip address of tracker server: %s "
				"fail!, error info: %s\n", tracker_server, FUNC5(h_errno));
			return result;
		}

		for (i=0; i<g_tracker_group.server_count; i++)
		{
			if (FUNC4(g_tracker_group.servers + i,
					&conn) == 0)
			{
				g_tracker_group.server_index = i;
				break;
			}
		}

		if (i == g_tracker_group.server_count)
		{
			FUNC10("tracker server: %s not exists!\n", tracker_server);
			return 2;
		}
	}

	FUNC10("server_count=%d, server_index=%d\n",
            g_tracker_group.server_count, g_tracker_group.server_index);

	pTrackerServer = FUNC20();
	if (pTrackerServer == NULL)
	{
		FUNC2();
		return errno != 0 ? errno : ECONNREFUSED;
	}
	FUNC10("\ntracker server is %s:%d\n\n", pTrackerServer->ip_addr, pTrackerServer->port);

	if (arg_index < argc)
	{
		group_name = argv[arg_index++];
	}
	else
	{
		group_name = NULL;
	}

	if (FUNC13(op_type, "list") == 0)
	{
		if (group_name == NULL)
		{
			result = FUNC7(NULL);
		}
		else
		{
			result = FUNC7(group_name);
		}
	}
	else if (FUNC13(op_type, "delete") == 0)
	{
		if (arg_index >= argc)
		{
		if ((result=FUNC18(&g_tracker_group, \
				group_name)) == 0)
		{
			FUNC10("delete group: %s success\n", \
				group_name);
		}
		else
		{
			FUNC10("delete group: %s fail, " \
				"error no: %d, error info: %s\n", \
				group_name, result, FUNC0(result));
		}
		}
        else
        {
		char *storage_id;

		storage_id = argv[arg_index++];
		if ((result=FUNC19(&g_tracker_group, \
				group_name, storage_id)) == 0)
		{
			FUNC10("delete storage server %s::%s success\n", \
				group_name, storage_id);
		}
		else
		{
			FUNC10("delete storage server %s::%s fail, " \
				"error no: %d, error info: %s\n", \
				group_name, storage_id, \
				result, FUNC0(result));
		}
        }
	}
	else if (FUNC13(op_type, "set_trunk_server") == 0)
	{
		char *storage_id;
		char new_trunk_server_id[FDFS_STORAGE_ID_MAX_SIZE];

		if (group_name == NULL)
		{
			FUNC22(argv);
			return 1;
		}
		if (arg_index >= argc)
		{
			storage_id = "";
		}
		else
		{
			storage_id = argv[arg_index++];
		}

		if ((result=FUNC21(&g_tracker_group, \
			group_name, storage_id, new_trunk_server_id)) == 0)
		{
			FUNC10("set trunk server %s::%s success, " \
				"new trunk server: %s\n", group_name, \
				storage_id, new_trunk_server_id);
		}
		else
		{
			FUNC10("set trunk server %s::%s fail, " \
				"error no: %d, error info: %s\n", \
				group_name, storage_id, \
				result, FUNC0(result));
		}
	}
	else
	{
		FUNC10("Invalid command %s\n\n", op_type);
		FUNC22(argv);
	}

	FUNC17(pTrackerServer, true);
	FUNC2();
	return 0;
}