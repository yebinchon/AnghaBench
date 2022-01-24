#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** paths; } ;
typedef  int /*<<< orphan*/  StorageBinLogReader ;

/* Variables and functions */
 TYPE_1__ g_fdfs_store_paths ; 
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const int store_path_index)
{
	char *pBasePath;
	StorageBinLogReader reader;
	int result;

	pBasePath = g_fdfs_store_paths.paths[store_path_index];
	if ((result=FUNC0(pBasePath, &reader)) != 0)
	{
		FUNC2(&reader);
		return result;
	}

	result = FUNC1(store_path_index, &reader);

	FUNC2(&reader);
	return result;
}