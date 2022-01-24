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
typedef  int /*<<< orphan*/  IniContext ;

/* Variables and functions */
 int /*<<< orphan*/  FDFS_ID_TYPE_IP_ADDRESS ; 
 int /*<<< orphan*/  FDFS_ID_TYPE_SERVER_ID ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_id_type_in_filename ; 
 int /*<<< orphan*/  g_use_storage_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *config_filename, \
		IniContext *pItemContext)
{
	char *pIdType;

	g_use_storage_id = FUNC1(NULL, "use_storage_id", \
				pItemContext, false);
	if (!g_use_storage_id)
	{
		return 0;
	}

	pIdType = FUNC2(NULL, "id_type_in_filename", \
			pItemContext);
	if (pIdType != NULL && FUNC3(pIdType, "id") == 0)
	{
		g_id_type_in_filename = FDFS_ID_TYPE_SERVER_ID;
	}
	else
	{
		g_id_type_in_filename = FDFS_ID_TYPE_IP_ADDRESS;
	}

	return FUNC0(config_filename, pItemContext);
}