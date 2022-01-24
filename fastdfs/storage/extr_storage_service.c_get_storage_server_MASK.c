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
typedef  int /*<<< orphan*/  targetServer ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {TYPE_1__ server; } ;
typedef  TYPE_2__ FDFSStorageServer ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_sorted_storages ; 
 int /*<<< orphan*/  g_storage_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  storage_cmp_by_server_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static FDFSStorageServer *FUNC3(const char *storage_server_id)
{
	FDFSStorageServer targetServer;
	FDFSStorageServer *pTargetServer;
	FDFSStorageServer **ppFound;

	FUNC1(&targetServer, 0, sizeof(targetServer));
	FUNC2(targetServer.server.id, storage_server_id);

	pTargetServer = &targetServer;
	ppFound = (FDFSStorageServer **)FUNC0(&pTargetServer, \
		g_sorted_storages, g_storage_count, \
		sizeof(FDFSStorageServer *), storage_cmp_by_server_id);
	if (ppFound == NULL)
	{
		return NULL;
	}
	else
	{
		return *ppFound;
	}
}