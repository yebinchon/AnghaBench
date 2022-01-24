#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  count; int /*<<< orphan*/  ids; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ FDFSStorageIdInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdfs_cmp_server_id ; 
 TYPE_3__ g_storage_ids_by_id ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char const*) ; 

FDFSStorageIdInfo *FUNC3(const char *id)
{
	FDFSStorageIdInfo target;

	FUNC1(&target, 0, sizeof(FDFSStorageIdInfo));
	FUNC2(target.id, sizeof(target.id), "%s", id);
	return (FDFSStorageIdInfo *)FUNC0(&target,
            g_storage_ids_by_id.ids, g_storage_ids_by_id.count,
            sizeof(FDFSStorageIdInfo), fdfs_cmp_server_id);
}