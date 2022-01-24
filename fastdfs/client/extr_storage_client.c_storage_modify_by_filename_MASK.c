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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FDFS_UPLOAD_BY_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,char const*,char const*) ; 

int FUNC3(ConnectionInfo *pTrackerServer, \
		ConnectionInfo *pStorageServer, const char *local_filename,\
		const int64_t file_offset, const char *group_name, \
		const char *appender_filename)
{
	struct stat stat_buf;

	if (appender_filename == NULL || *appender_filename == '\0' \
	 || group_name == NULL || *group_name == '\0')
	{
		return EINVAL;
	}

	if (FUNC1(local_filename, &stat_buf) != 0)
	{
		return errno != 0 ? errno : EPERM;
	}

	if (!FUNC0(stat_buf.st_mode))
	{
		return EINVAL;
	}
	return FUNC2(pTrackerServer, pStorageServer, \
		FDFS_UPLOAD_BY_FILE, local_filename, \
		NULL, file_offset, stat_buf.st_size, \
		group_name, appender_filename);
}