#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FDFSFileInfo ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int) ; 

int FUNC1(ConnectionInfo *pTrackerServer, \
			ConnectionInfo *pStorageServer,  \
			const char *group_name, const char *remote_filename)
{
	FDFSFileInfo file_info;
	return FUNC0(pTrackerServer, \
			pStorageServer, group_name, remote_filename, \
			&file_info, true);
}