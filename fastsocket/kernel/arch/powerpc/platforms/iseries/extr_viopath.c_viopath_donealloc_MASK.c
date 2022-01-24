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
struct alloc_parms {int number; int /*<<< orphan*/  done; int /*<<< orphan*/  wait_atomic; scalar_t__ used_wait_atomic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *parm, int number)
{
	struct alloc_parms *parmsp = parm;

	parmsp->number = number;
	if (parmsp->used_wait_atomic)
		FUNC0(&parmsp->wait_atomic, 0);
	else
		FUNC1(&parmsp->done);
}