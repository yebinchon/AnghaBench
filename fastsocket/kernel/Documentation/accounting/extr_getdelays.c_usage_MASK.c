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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(stderr, "getdelays [-dilv] [-w logfile] [-r bufsize] "
			"[-m cpumask] [-t tgid] [-p pid]\n");
	FUNC0(stderr, "  -d: print delayacct stats\n");
	FUNC0(stderr, "  -i: print IO accounting (works only with -p)\n");
	FUNC0(stderr, "  -l: listen forever\n");
	FUNC0(stderr, "  -v: debug on\n");
	FUNC0(stderr, "  -C: container path\n");
}