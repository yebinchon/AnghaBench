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
struct bfa_ioim_s {TYPE_1__* iosp; int /*<<< orphan*/  itnim; int /*<<< orphan*/  iotag; int /*<<< orphan*/  bfa; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tskim; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOIM_SM_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_cleanups ; 

void
FUNC3(struct bfa_ioim_s *ioim)
{
	FUNC2(ioim->bfa, ioim->iotag);
	FUNC1(ioim->itnim, io_cleanups);

	ioim->iosp->tskim = NULL;
	FUNC0(ioim, BFA_IOIM_SM_CLEANUP);
}