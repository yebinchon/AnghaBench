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
struct ucontext {int /*<<< orphan*/  uc_mcontext; } ;
struct sigcontext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct sigcontext*) ; 

void FUNC1(int sig)
{
	struct ucontext *uc;
	asm("movq %%rdx, %0" : "=r" (uc));

	FUNC0(sig, (struct sigcontext *) &uc->uc_mcontext);
}