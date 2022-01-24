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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FDFSMetaData ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FDFS_UPLOAD_BY_FILE ; 
 int /*<<< orphan*/  STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/  const*,int const,char*,char*) ; 

int FUNC4(ConnectionInfo *pTrackerServer, \
		ConnectionInfo *pStorageServer, const char *local_filename,\
		const char *master_filename, const char *prefix_name, \
		const char *file_ext_name, \
		const FDFSMetaData *meta_list, const int meta_count, \
		char *group_name, char *remote_filename)
{
	struct stat stat_buf;

	if (master_filename == NULL || *master_filename == '\0' || \
	prefix_name == NULL || group_name == NULL || *group_name == '\0')
	{
		return EINVAL;
	}

	if (FUNC2(local_filename, &stat_buf) != 0)
	{
		*group_name = '\0';
		*remote_filename = '\0';
		return errno != 0 ? errno : EPERM;
	}

	if (!FUNC0(stat_buf.st_mode))
	{
		*group_name = '\0';
		*remote_filename = '\0';
		return EINVAL;
	}

	if (file_ext_name == NULL)
	{
		file_ext_name = FUNC1(local_filename);
	}

	return FUNC3(pTrackerServer, pStorageServer, \
			0, STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE, \
			FDFS_UPLOAD_BY_FILE, local_filename, \
			NULL, stat_buf.st_size, master_filename, prefix_name, \
			file_ext_name, meta_list, meta_count, \
			group_name, remote_filename);
}