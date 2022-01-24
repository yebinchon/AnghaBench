#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct nodepda_s {TYPE_3__* bte_if; struct timer_list bte_recovery_timer; } ;
typedef  int /*<<< orphan*/  nasid_t ;
struct TYPE_13__ {int i_b0_esd; int i_b1_esd; } ;
struct TYPE_17__ {void* ii_imem_regval; TYPE_2__ ii_imem_fld_s; } ;
typedef  TYPE_6__ ii_imem_u_t ;
struct TYPE_15__ {int i_e_bte_0; int i_e_bte_1; } ;
struct TYPE_18__ {void* ii_ieclr_regval; TYPE_4__ ii_ieclr_fld_s; } ;
typedef  TYPE_7__ ii_ieclr_u_t ;
struct TYPE_19__ {scalar_t__ d_bteop; void* ii_icrb0_d_regval; } ;
typedef  TYPE_8__ ii_icrb0_d_u_t ;
struct TYPE_12__ {scalar_t__ i_crb_mark; int i_crb_vld; } ;
struct TYPE_20__ {TYPE_1__ ii_icmr_fld_s; void* ii_icmr_regval; } ;
typedef  TYPE_9__ ii_icmr_u_t ;
struct TYPE_16__ {int i_soft_reset; } ;
struct TYPE_11__ {void* ii_ibcr_regval; TYPE_5__ ii_ibcr_fld_s; } ;
typedef  TYPE_10__ ii_ibcr_u_t ;
struct TYPE_14__ {scalar_t__ bh_error; int /*<<< orphan*/  bte_cnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BTE_SUCCESS ; 
 int HZ ; 
 int /*<<< orphan*/  IIO_IBCR ; 
 int /*<<< orphan*/  IIO_ICMR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IIO_IECLR ; 
 int /*<<< orphan*/  IIO_IMEM ; 
 int IIO_NUM_CRBS ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_list*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct timer_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(unsigned long _nodepda)
{
	struct nodepda_s *err_nodepda = (struct nodepda_s *)_nodepda;
	struct timer_list *recovery_timer = &err_nodepda->bte_recovery_timer;
	nasid_t nasid;
	int i;
	int valid_crbs;
	ii_imem_u_t imem;	/* II IMEM Register */
	ii_icrb0_d_u_t icrbd;	/* II CRB Register D */
	ii_ibcr_u_t ibcr;
	ii_icmr_u_t icmr;
	ii_ieclr_u_t ieclr;

	FUNC0(("shub1_bte_error_handler(%p) - %d\n", err_nodepda,
		    FUNC7()));

	if ((err_nodepda->bte_if[0].bh_error == BTE_SUCCESS) &&
	    (err_nodepda->bte_if[1].bh_error == BTE_SUCCESS)) {
		FUNC0(("eh:%p:%d Nothing to do.\n", err_nodepda,
			    FUNC7()));
		return 1;
	}

	/* Determine information about our hub */
	nasid = FUNC4(err_nodepda->bte_if[0].bte_cnode);

	/*
	 * A BTE transfer can use multiple CRBs.  We need to make sure
	 * that all the BTE CRBs are complete (or timed out) before
	 * attempting to clean up the error.  Resetting the BTE while
	 * there are still BTE CRBs active will hang the BTE.
	 * We should look at all the CRBs to see if they are allocated
	 * to the BTE and see if they are still active.  When none
	 * are active, we can continue with the cleanup.
	 *
	 * We also want to make sure that the local NI port is up.
	 * When a router resets the NI port can go down, while it
	 * goes through the LLP handshake, but then comes back up.
	 */
	icmr.ii_icmr_regval = FUNC2(nasid, IIO_ICMR);
	if (icmr.ii_icmr_fld_s.i_crb_mark != 0) {
		/*
		 * There are errors which still need to be cleaned up by
		 * hubiio_crb_error_handler
		 */
		FUNC6(recovery_timer, jiffies + (HZ * 5));
		FUNC0(("eh:%p:%d Marked Giving up\n", err_nodepda,
			    FUNC7()));
		return 1;
	}
	if (icmr.ii_icmr_fld_s.i_crb_vld != 0) {

		valid_crbs = icmr.ii_icmr_fld_s.i_crb_vld;

		for (i = 0; i < IIO_NUM_CRBS; i++) {
			if (!((1 << i) & valid_crbs)) {
				/* This crb was not marked as valid, ignore */
				continue;
			}
			icrbd.ii_icrb0_d_regval =
			    FUNC2(nasid, FUNC1(i));
			if (icrbd.d_bteop) {
				FUNC6(recovery_timer, jiffies + (HZ * 5));
				FUNC0(("eh:%p:%d Valid %d, Giving up\n",
					    err_nodepda, FUNC7(),
					    i));
				return 1;
			}
		}
	}

	FUNC0(("eh:%p:%d Cleaning up\n", err_nodepda, FUNC7()));
	/* Re-enable both bte interfaces */
	imem.ii_imem_regval = FUNC2(nasid, IIO_IMEM);
	imem.ii_imem_fld_s.i_b0_esd = imem.ii_imem_fld_s.i_b1_esd = 1;
	FUNC3(nasid, IIO_IMEM, imem.ii_imem_regval);

	/* Clear BTE0/1 error bits */
	ieclr.ii_ieclr_regval = 0;
	if (err_nodepda->bte_if[0].bh_error != BTE_SUCCESS)
		ieclr.ii_ieclr_fld_s.i_e_bte_0 = 1;
	if (err_nodepda->bte_if[1].bh_error != BTE_SUCCESS)
		ieclr.ii_ieclr_fld_s.i_e_bte_1 = 1;
	FUNC3(nasid, IIO_IECLR, ieclr.ii_ieclr_regval);

	/* Reinitialize both BTE state machines. */
	ibcr.ii_ibcr_regval = FUNC2(nasid, IIO_IBCR);
	ibcr.ii_ibcr_fld_s.i_soft_reset = 1;
	FUNC3(nasid, IIO_IBCR, ibcr.ii_ibcr_regval);

	FUNC5(recovery_timer);
	return 0;
}