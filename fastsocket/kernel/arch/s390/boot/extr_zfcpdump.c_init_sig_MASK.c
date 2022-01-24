#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ __sighandler_t ;
struct TYPE_3__ {int sa_flags; int /*<<< orphan*/  sa_mask; scalar_t__ sa_handler; } ;
struct TYPE_4__ {TYPE_1__ sigact; } ;

/* Variables and functions */
 int SA_NODEFER ; 
 int SA_RESETHAND ; 
 int SA_SIGINFO ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ dump_sig_handler ; 
 TYPE_2__ g ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	g.sigact.sa_flags = (SA_NODEFER | SA_SIGINFO | SA_RESETHAND);
	g.sigact.sa_handler = (__sighandler_t)dump_sig_handler;
	if (FUNC1(&g.sigact.sa_mask) < 0)
		return -1;
	if (FUNC0(SIGINT, &g.sigact, NULL) < 0)
		return -1;
	if (FUNC0(SIGTERM, &g.sigact, NULL) < 0)
		return -1;
	if (FUNC0(SIGPIPE, &g.sigact, NULL) < 0)
		return -1;
	if (FUNC0(SIGABRT, &g.sigact, NULL) < 0)
		return -1;
	if (FUNC0(SIGSEGV, &g.sigact, NULL) < 0)
		return -1;
	if (FUNC0(SIGBUS, &g.sigact, NULL) < 0)
		return -1;

	return 0;
}