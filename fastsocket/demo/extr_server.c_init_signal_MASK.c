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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	sigset_t siglist;

	if(FUNC4(&siglist) == -1) {
		FUNC1("Unable to initialize signal list");
		FUNC0();
	}

	if(FUNC3(&siglist, SIGALRM) == -1) {
		FUNC1("Unable to add SIGALRM signal to signal list");
		FUNC0();
	}

	if(FUNC3(&siglist, SIGINT) == -1) {
		FUNC1("Unable to add SIGINT signal to signal list");
		FUNC0();
	}

	if(FUNC2(SIG_BLOCK, &siglist, NULL) != 0) {
		FUNC1("Unable to change signal mask");
		FUNC0();
	}
}