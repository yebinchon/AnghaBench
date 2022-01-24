#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sigscratch {int /*<<< orphan*/  pt; } ;
struct TYPE_4__ {int sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_6__ {TYPE_2__* sighand; int /*<<< orphan*/  blocked; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int SA_NODEFER ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sigscratch*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int /*<<< orphan*/ *,struct k_sigaction*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC10 (unsigned long sig, struct k_sigaction *ka, siginfo_t *info, sigset_t *oldset,
	       struct sigscratch *scr)
{
	if (FUNC0(&scr->pt)) {
		/* send signal to IA-32 process */
		if (!FUNC1(sig, ka, info, oldset, &scr->pt))
			return 0;
	} else
		/* send signal to IA-64 process */
		if (!FUNC3(sig, ka, info, oldset, scr))
			return 0;

	FUNC6(&current->sighand->siglock);
	FUNC5(&current->blocked, &current->blocked, &ka->sa.sa_mask);
	if (!(ka->sa.sa_flags & SA_NODEFER))
		FUNC4(&current->blocked, sig);
	FUNC2();
	FUNC7(&current->sighand->siglock);

	/*
	 * Let tracing know that we've done the handler setup.
	 */
	FUNC9(sig, info, ka, &scr->pt,
				 FUNC8(TIF_SINGLESTEP));

	return 1;
}