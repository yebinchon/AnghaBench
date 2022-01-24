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
struct qib_devdata {int num_pports; unsigned long long control; TYPE_2__* pport; TYPE_1__* cspec; } ;
struct TYPE_4__ {scalar_t__ link_speed_supported; } ;
struct TYPE_3__ {unsigned long long errormask; } ;

/* Variables and functions */
 unsigned long long E_SPKT_ERRS_IGNORE ; 
 int /*<<< orphan*/  kr_control ; 
 int /*<<< orphan*/  kr_errclear ; 
 int /*<<< orphan*/  kr_errmask ; 
 int /*<<< orphan*/  kr_hwerrclear ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  krp_errclear ; 
 int /*<<< orphan*/  krp_errmask ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC4(struct qib_devdata *dd)
{
	int pidx;

	/* disable error interrupts, to avoid confusion */
	FUNC2(dd, kr_errmask, 0ULL);

	for (pidx = 0; pidx < dd->num_pports; ++pidx)
		if (dd->pport[pidx].link_speed_supported)
			FUNC3(dd->pport + pidx, krp_errmask,
					    0ULL);

	/* also disable interrupts; errormask is sometimes overwriten */
	FUNC0(dd, 0);

	/* clear the freeze, and be sure chip saw it */
	FUNC2(dd, kr_control, dd->control);
	FUNC1(dd, kr_scratch);

	/*
	 * Force new interrupt if any hwerr, error or interrupt bits are
	 * still set, and clear "safe" send packet errors related to freeze
	 * and cancelling sends.  Re-enable error interrupts before possible
	 * force of re-interrupt on pending interrupts.
	 */
	FUNC2(dd, kr_hwerrclear, 0ULL);
	FUNC2(dd, kr_errclear, E_SPKT_ERRS_IGNORE);
	FUNC2(dd, kr_errmask, dd->cspec->errormask);
	/* We need to purge per-port errs and reset mask, too */
	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		if (!dd->pport[pidx].link_speed_supported)
			continue;
		FUNC3(dd->pport + pidx, krp_errclear, ~0Ull);
		FUNC3(dd->pport + pidx, krp_errmask, ~0Ull);
	}
	FUNC0(dd, 1);
}