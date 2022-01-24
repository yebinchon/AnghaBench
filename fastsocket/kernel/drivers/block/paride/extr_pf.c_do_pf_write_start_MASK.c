#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATAPI_WRITE_10 ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ PF_MAX_RETRIES ; 
 int /*<<< orphan*/  PF_TMO ; 
 int /*<<< orphan*/  STAT_BUSY ; 
 int STAT_DRQ ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  do_pf_write_done ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nice ; 
 int /*<<< orphan*/  pf_block ; 
 int /*<<< orphan*/  pf_buf ; 
 int pf_busy ; 
 TYPE_1__* pf_current ; 
 scalar_t__ pf_mask ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  pf_ready ; 
 scalar_t__ pf_retries ; 
 int /*<<< orphan*/  pf_run ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void (*) ()) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	pf_busy = 1;

	if (FUNC2(pf_current, ATAPI_WRITE_10, pf_block, pf_run)) {
		FUNC4(pf_current->pi);
		if (pf_retries < PF_MAX_RETRIES) {
			pf_retries++;
			FUNC5(pf_current->pi, do_pf_write_start);
			return;
		}
		FUNC0(-EIO);
		return;
	}

	while (1) {
		if (FUNC3(pf_current, STAT_BUSY, STAT_DRQ | STAT_ERR,
			    "write block", "data wait") & STAT_ERR) {
			FUNC4(pf_current->pi);
			if (pf_retries < PF_MAX_RETRIES) {
				pf_retries++;
				FUNC5(pf_current->pi, do_pf_write_start);
				return;
			}
			FUNC0(-EIO);
			return;
		}
		FUNC6(pf_current->pi, pf_buf, 512);
		if (FUNC1())
			break;
	}
	pf_mask = 0;
	FUNC7(do_pf_write_done, pf_ready, PF_TMO, nice);
}