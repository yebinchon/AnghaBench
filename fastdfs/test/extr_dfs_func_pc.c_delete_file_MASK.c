#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ip_addr; } ;
typedef  TYPE_1__ ConnectionInfo ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  pTrackerServer ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 

int FUNC4(const char *file_id, char *storage_ip)
{
	int result;
	ConnectionInfo storageServer;
	ConnectionInfo *pStorageServer;

	if ((result=FUNC3(pTrackerServer, 
			&storageServer, file_id)) != 0)
	{
		return result;
	}

	if ((pStorageServer=FUNC0(&storageServer, 
			&result)) == NULL)
	{
		return result;
	}

	FUNC2(storage_ip, storageServer.ip_addr);
	result = FUNC1(pTrackerServer, pStorageServer, file_id);

	return result;
}