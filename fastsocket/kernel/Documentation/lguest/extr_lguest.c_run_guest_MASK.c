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
typedef  int /*<<< orphan*/  reason ;
typedef  int /*<<< orphan*/  notify_addr ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ERESTART ; 
 int /*<<< orphan*/  cpu_id ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  lguest_fd ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 

__attribute__((used)) static void __attribute__((noreturn)) FUNC6(void)
{
	for (;;) {
		unsigned long notify_addr;
		int readval;

		/* We read from the /dev/lguest device to run the Guest. */
		readval = FUNC3(lguest_fd, &notify_addr,
				sizeof(notify_addr), cpu_id);

		/* One unsigned long means the Guest did HCALL_NOTIFY */
		if (readval == sizeof(notify_addr)) {
			FUNC5("Notify on address %#lx\n", notify_addr);
			FUNC2(notify_addr);
		/* ENOENT means the Guest died.  Reading tells us why. */
		} else if (errno == ENOENT) {
			char reason[1024] = { 0 };
			FUNC3(lguest_fd, reason, sizeof(reason)-1, cpu_id);
			FUNC1(1, "%s", reason);
		/* ERESTART means that we need to reboot the guest */
		} else if (errno == ERESTART) {
			FUNC4();
		/* Anything else means a bug or incompatible change. */
		} else
			FUNC0(1, "Running guest failed");
	}
}