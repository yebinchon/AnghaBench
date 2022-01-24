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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t MAX_VMAS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 size_t nr_vmas ; 
 int opt_pid ; 
 unsigned long page_size ; 
 int /*<<< orphan*/  pagemap_fd ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 unsigned long* pg_end ; 
 unsigned long* pg_start ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*,char*,unsigned long*,unsigned long*,char*,char*,char*,char*,unsigned long long*,int*,int*,unsigned long*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC10(const char *str)
{
	FILE *file;
	char buf[5000];

	opt_pid = FUNC6(str);

	FUNC8(buf, "/proc/%d/pagemap", opt_pid);
	pagemap_fd = FUNC0(buf, O_RDONLY);

	FUNC8(buf, "/proc/%d/maps", opt_pid);
	file = FUNC4(buf, "r");
	if (!file) {
		FUNC7(buf);
		FUNC1(EXIT_FAILURE);
	}

	while (FUNC3(buf, sizeof(buf), file) != NULL) {
		unsigned long vm_start;
		unsigned long vm_end;
		unsigned long long pgoff;
		int major, minor;
		char r, w, x, s;
		unsigned long ino;
		int n;

		n = FUNC9(buf, "%lx-%lx %c%c%c%c %llx %x:%x %lu",
			   &vm_start,
			   &vm_end,
			   &r, &w, &x, &s,
			   &pgoff,
			   &major, &minor,
			   &ino);
		if (n < 10) {
			FUNC5(stderr, "unexpected line: %s\n", buf);
			continue;
		}
		pg_start[nr_vmas] = vm_start / page_size;
		pg_end[nr_vmas] = vm_end / page_size;
		if (++nr_vmas >= MAX_VMAS) {
			FUNC5(stderr, "too many VMAs\n");
			break;
		}
	}
	FUNC2(file);
}