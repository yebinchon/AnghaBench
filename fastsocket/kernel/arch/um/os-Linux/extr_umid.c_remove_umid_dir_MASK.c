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
 scalar_t__ UMID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 char FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  umid ; 
 char* uml_dir ; 

__attribute__((used)) static void FUNC4(void)
{
	char dir[FUNC3(uml_dir) + UMID_LEN + 1], err;

	FUNC2(dir, "%s%s", uml_dir, umid);
	err = FUNC1(dir);
	if (err)
		FUNC0("remove_umid_dir - remove_files_and_dir failed with "
		       "err = %d\n", err);
}