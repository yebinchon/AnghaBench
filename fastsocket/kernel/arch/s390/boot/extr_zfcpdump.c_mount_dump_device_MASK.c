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
struct TYPE_2__ {int /*<<< orphan*/  parm_part; } ;

/* Variables and functions */
 char* DEV_SCSI ; 
 int /*<<< orphan*/  DUMP_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 TYPE_1__ g ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void)
{
	int pid;
	char dump_part[16];

	FUNC1("e2fsck\n");
	FUNC7(dump_part, "%s%i", DEV_SCSI, FUNC2(g.parm_part));

	pid = FUNC5();
	if (pid < 0) {
		FUNC0("fork failed\n");
		return -1;
	} else if (pid == 0) {
		FUNC3("/bin/e2fsck", "e2fsck", dump_part, "-y", NULL);
		FUNC3("/sbin/e2fsck", "e2fsck", dump_part, "-y", NULL);
		FUNC4(1);
	} else {
		FUNC8(pid, NULL, 0);
	}

	FUNC1("mount\n");
	if (FUNC6(dump_part, DUMP_DIR, "ext4", 0, NULL) == 0)
		return 0;
	if (FUNC6(dump_part, DUMP_DIR, "ext3", 0, NULL) == 0)
		return 0;
	if (FUNC6(dump_part, DUMP_DIR, "ext2", 0, NULL) != 0) {
		FUNC0("mount failed\n");
		return -1;
	}
	return 0;
}