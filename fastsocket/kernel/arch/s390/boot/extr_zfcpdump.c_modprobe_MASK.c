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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *module)
{
	pid_t pid;

	pid = FUNC3();
	if (pid < 0) {
		FUNC0("fork failed\n");
		return;
	} else if (pid == 0) {
		FUNC1("/bin/modprobe", "modprobe", module, "-q", NULL);
		FUNC1("/sbin/modprobe", "modprobe", module, "-q", NULL);
		FUNC2(1);
	} else {
		FUNC4(pid, NULL, 0);
	}
}