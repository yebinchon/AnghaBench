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
struct TYPE_7__ {int active_count; TYPE_1__** active_servers; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ FDFSStorageDetail ;
typedef  TYPE_2__ FDFSGroupInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

FDFSStorageDetail *FUNC1(FDFSGroupInfo *pGroup, \
			FDFSStorageDetail *pDestServer)
{
	FDFSStorageDetail **ppServer;
	FDFSStorageDetail **ppServerEnd;

	ppServerEnd = pGroup->active_servers + pGroup->active_count;
	for (ppServer=pGroup->active_servers; ppServer<ppServerEnd; ppServer++)
	{
		if (FUNC0((*ppServer)->id, pDestServer->id) == 0)
		{
			continue;
		}

		return *ppServer;
	}

	return NULL;
}