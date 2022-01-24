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
struct TYPE_3__ {int /*<<< orphan*/ * last_sync_timestamps; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/ * http_servers; int /*<<< orphan*/ * all_servers; int /*<<< orphan*/ * active_servers; int /*<<< orphan*/ * sorted_servers; } ;
typedef  TYPE_1__ FDFSGroupInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ g_http_check_interval ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FDFSGroupInfo *pGroup)
{
	if (pGroup->sorted_servers != NULL)
	{
		FUNC0(pGroup->sorted_servers);
		pGroup->sorted_servers = NULL;
	}

	if (pGroup->active_servers != NULL)
	{
		FUNC0(pGroup->active_servers);
		pGroup->active_servers = NULL;
	}

	if (pGroup->all_servers != NULL)
	{
		FUNC2(pGroup->all_servers, \
				pGroup->alloc_size);
		pGroup->all_servers = NULL;
	}

#ifdef WITH_HTTPD
	if (g_http_check_interval > 0)
	{
		if (pGroup->http_servers != NULL)
		{
			free(pGroup->http_servers);
			pGroup->http_servers = NULL;
		}
	}
#endif

	FUNC1(pGroup->last_sync_timestamps, \
				pGroup->alloc_size);
	pGroup->last_sync_timestamps = NULL;
}