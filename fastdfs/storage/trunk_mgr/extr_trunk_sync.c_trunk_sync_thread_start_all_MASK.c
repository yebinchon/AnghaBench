#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ FDFSStorageServer ;

/* Variables and functions */
 int g_storage_count ; 
 TYPE_1__* g_storage_servers ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1()
{
	FDFSStorageServer *pServer;
	FDFSStorageServer *pEnd;
	int result;
	int ret;

	result = 0;
	pEnd = g_storage_servers + g_storage_count;
	for (pServer=g_storage_servers; pServer<pEnd; pServer++)
	{
		ret = FUNC0(&(pServer->server));
		if (ret != 0)
		{
			result = ret;
		}
	}

	return result;
}