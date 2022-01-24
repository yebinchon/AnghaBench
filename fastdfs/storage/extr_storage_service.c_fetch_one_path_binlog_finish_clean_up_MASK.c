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
struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * extra_arg; } ;
typedef  TYPE_1__ StorageClientInfo ;
typedef  int /*<<< orphan*/  StorageBinLogReader ;

/* Variables and functions */
 int MAX_PATH_SIZE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct fast_task_info *pTask)
{
	StorageClientInfo *pClientInfo;
	StorageBinLogReader *pReader;
	char full_filename[MAX_PATH_SIZE];

	pClientInfo = (StorageClientInfo *)pTask->arg;
	pReader = (StorageBinLogReader *)pClientInfo->extra_arg;
	if (pReader == NULL)
	{
		return;
	}

	pClientInfo->extra_arg = NULL;

    FUNC4(pReader);
	FUNC3(pReader);
	FUNC2(pReader, full_filename);
	if (FUNC0(full_filename))
	{
		FUNC5(full_filename);
	}

	FUNC1(pReader);
}