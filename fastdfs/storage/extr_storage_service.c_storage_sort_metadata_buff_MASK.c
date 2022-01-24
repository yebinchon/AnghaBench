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
typedef  int /*<<< orphan*/  FDFSMetaData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  metadata_cmp_by_name ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *meta_buff, const int meta_size)
{
	FDFSMetaData *meta_list;
	int meta_count;
	int meta_bytes;
	int result;

	meta_list = FUNC1(meta_buff, &meta_count, &result);
	if (meta_list == NULL)
	{
		return result;
	}

	FUNC3((void *)meta_list, meta_count, sizeof(FDFSMetaData), \
		metadata_cmp_by_name);

	FUNC0(meta_list, meta_count, meta_buff, &meta_bytes);
	FUNC2(meta_list);

	return 0;
}