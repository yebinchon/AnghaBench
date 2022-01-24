#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int active_count; int /*<<< orphan*/  storage_port; int /*<<< orphan*/ ** active_servers; int /*<<< orphan*/ * pStoreServer; } ;
typedef  int /*<<< orphan*/  FDFSStorageDetail ;
typedef  TYPE_1__ FDFSGroupInfo ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(FDFSGroupInfo *pGroup, 
		const bool save)
{
	FDFSStorageDetail *pStoreServer;
	FDFSStorageDetail **ppServer;
	FDFSStorageDetail **ppServerEnd;
	int result;
	int64_t file_size;
	int64_t max_file_size;

	pStoreServer = pGroup->pStoreServer;
	if (pStoreServer == NULL)
	{
		return ENOENT;
	}

	result = FUNC2(
            FUNC0(pStoreServer),
            pGroup->storage_port, &max_file_size);
	if (result != 0)
	{
		return result;
	}

	ppServerEnd = pGroup->active_servers + pGroup->active_count;
	for (ppServer=pGroup->active_servers; ppServer<ppServerEnd; ppServer++)
	{
		if (*ppServer == pStoreServer)
		{
			continue;
		}

		result = FUNC2(
                FUNC0(*ppServer),
                pGroup->storage_port, &file_size);
		if (result != 0)
		{
			continue;
		}

		if (file_size > max_file_size)
		{
			pStoreServer = *ppServer;
		}
	}

	return FUNC1(pGroup, pStoreServer, save);
}