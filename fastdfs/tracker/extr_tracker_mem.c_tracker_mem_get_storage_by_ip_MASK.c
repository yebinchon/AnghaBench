#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  group_name; } ;
struct TYPE_6__ {char* id; } ;
typedef  TYPE_1__ FDFSStorageIdInfo ;
typedef  int /*<<< orphan*/  FDFSStorageDetail ;
typedef  TYPE_2__ FDFSGroupInfo ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ g_use_storage_id ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char const*) ; 

FDFSStorageDetail *FUNC2(FDFSGroupInfo *pGroup, \
				const char *ip_addr)
{
	const char *storage_id;

	if (g_use_storage_id)
	{
		FDFSStorageIdInfo *pStorageIdInfo;
		pStorageIdInfo = FUNC0( \
				pGroup->group_name, ip_addr);
		if (pStorageIdInfo == NULL)
		{
			return NULL;
		}
		storage_id = pStorageIdInfo->id;
	}
	else
	{
		storage_id = ip_addr;
	}

	return FUNC1(pGroup, storage_id);
}