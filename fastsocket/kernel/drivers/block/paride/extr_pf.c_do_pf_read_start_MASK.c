#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATAPI_READ_10 ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ PF_MAX_RETRIES ; 
 int /*<<< orphan*/  PF_TMO ; 
 int /*<<< orphan*/  STAT_DRQ ; 
 int /*<<< orphan*/  do_pf_read_drq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nice ; 
 int /*<<< orphan*/  pf_block ; 
 int pf_busy ; 
 TYPE_1__* pf_current ; 
 int /*<<< orphan*/  pf_mask ; 
 int /*<<< orphan*/  pf_ready ; 
 scalar_t__ pf_retries ; 
 int /*<<< orphan*/  pf_run ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void (*) ()) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	pf_busy = 1;

	if (FUNC1(pf_current, ATAPI_READ_10, pf_block, pf_run)) {
		FUNC2(pf_current->pi);
		if (pf_retries < PF_MAX_RETRIES) {
			pf_retries++;
			FUNC3(pf_current->pi, do_pf_read_start);
			return;
		}
		FUNC0(-EIO);
		return;
	}
	pf_mask = STAT_DRQ;
	FUNC4(do_pf_read_drq, pf_ready, PF_TMO, nice);
}