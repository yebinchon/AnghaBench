#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bteinfo_s {int /*<<< orphan*/  bte_num; int /*<<< orphan*/  bte_cnode; int /*<<< orphan*/  bte_error_count; scalar_t__ bh_error; } ;
struct TYPE_4__ {scalar_t__ ie_errortype; } ;
typedef  TYPE_1__ ioerror_t ;
typedef  int /*<<< orphan*/  cnodeid_t ;
struct TYPE_5__ {struct bteinfo_s* bte_if; } ;

/* Variables and functions */
 scalar_t__ BTEFAIL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void
FUNC3(cnodeid_t cnode, int btenum,
                      int crbnum, ioerror_t * ioe, int bteop)
{
	struct bteinfo_s *bte;


	bte = &(FUNC1(cnode)->bte_if[btenum]);

	/*
	 * The caller has already figured out the error type, we save that
	 * in the bte handle structure for the thread exercising the
	 * interface to consume.
	 */
	bte->bh_error = ioe->ie_errortype + BTEFAIL_OFFSET;
	bte->bte_error_count++;

	FUNC0(("Got an error on cnode %d bte %d: HW error type 0x%x\n",
		bte->bte_cnode, bte->bte_num, ioe->ie_errortype));
	FUNC2((unsigned long) FUNC1(cnode));
}