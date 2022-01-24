#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  full_filename ;
struct TYPE_7__ {int sub_path_high; int sub_path_low; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_8__ {TYPE_2__ path; TYPE_1__ file; } ;
typedef  TYPE_3__ FDFSTrunkFullInfo ;

/* Variables and functions */
 int MAX_PATH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ g_current_trunk_file_id ; 
 int /*<<< orphan*/  g_fdfs_base64_context ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int*,int*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  trunk_file_lock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(FDFSTrunkFullInfo *pTrunkInfo)
{
	char buff[32];
	int result;
	int filename_len;
	char short_filename[64];
	char full_filename[MAX_PATH_SIZE];
	int sub_path_high;
	int sub_path_low;

	while (1)
	{
		FUNC3(&trunk_file_lock);
		pTrunkInfo->file.id = ++g_current_trunk_file_id;
		result = FUNC6();
		FUNC4(&trunk_file_lock);
		if (result != 0)
		{
			return result;
		}

		FUNC2(pTrunkInfo->file.id, buff);
		FUNC0(&g_fdfs_base64_context, buff, sizeof(int), \
				short_filename, &filename_len, false);

		FUNC5(short_filename, filename_len, \
					&sub_path_high, &sub_path_low);

		pTrunkInfo->path.sub_path_high = sub_path_high;
		pTrunkInfo->path.sub_path_low = sub_path_low;

		FUNC7(pTrunkInfo, full_filename, \
			sizeof(full_filename));
		if (!FUNC1(full_filename))
		{
			break;
		}
	}

	if ((result=FUNC8(full_filename)) != 0)
	{
		return result;
	}

	return 0;
}