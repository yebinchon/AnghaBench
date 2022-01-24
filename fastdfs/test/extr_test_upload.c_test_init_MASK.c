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
 int EPERM ; 
 char* FILENAME_FAIL ; 
 char* FILENAME_FILE_ID ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int errno ; 
 void* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * fpFail ; 
 int /*<<< orphan*/ * fpSuccess ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int proccess_index ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 

__attribute__((used)) static int FUNC7()
{
	char filename[64];

	if (FUNC1("upload", 0) != 0 && FUNC4("upload", 0755) != 0)
	{
	}

	if (FUNC2("upload") != 0)
	{
		FUNC5("chdir fail, errno: %d, error info: %s\n", errno, FUNC0(errno));
		return errno != 0 ? errno : EPERM;
	}

	FUNC6(filename, "%s.%d", FILENAME_FILE_ID, proccess_index);
	if ((fpSuccess=FUNC3(filename, "wb")) == NULL)
	{
		FUNC5("open file %s fail, errno: %d, error info: %s\n", 
			filename, errno, FUNC0(errno));
		return errno != 0 ? errno : EPERM;
	}

	FUNC6(filename, "%s.%d", FILENAME_FAIL, proccess_index);
	if ((fpFail=FUNC3(filename, "wb")) == NULL)
	{
		FUNC5("open file %s fail, errno: %d, error info: %s\n", 
			filename, errno, FUNC0(errno));
		return errno != 0 ? errno : EPERM;
	}

	return 0;
}