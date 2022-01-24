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

/* Variables and functions */
 int FDFS_FILE_EXT_NAME_MAX_LEN ; 
 double RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *file_ext_name,
		char *szFormattedExt)
{
	int i;
	int ext_name_len;
	int pad_len;
	char *p;

	ext_name_len = FUNC2(file_ext_name);
	if (ext_name_len == 0)
	{
		pad_len = FDFS_FILE_EXT_NAME_MAX_LEN + 1;
	}
	else
	{
		pad_len = FDFS_FILE_EXT_NAME_MAX_LEN - ext_name_len;
	}

	p = szFormattedExt;
	for (i=0; i<pad_len; i++)
	{
		*p++ = '0' + (int)(10.0 * (double)FUNC1() / RAND_MAX);
	}

	if (ext_name_len > 0)
	{
		*p++ = '.';
		FUNC0(p, file_ext_name, ext_name_len);
		p += ext_name_len;
	}
	*p = '\0';
}