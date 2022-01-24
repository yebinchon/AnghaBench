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
typedef  size_t u32 ;
struct qib_pportdata {size_t port; scalar_t__ link_speed_supported; TYPE_1__* cpspec; } ;
struct qib_devdata {size_t num_pports; size_t unit; struct qib_pportdata* pport; } ;
struct TYPE_2__ {size_t no_eep; size_t h1_val; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qib_devdata*) ; 
 scalar_t__ FUNC1 (struct qib_devdata*) ; 
 int /*<<< orphan*/  QLOGIC_IB_IBCC_LINKINITCMD_SLEEP ; 
 int TXDDS_EXTRA_SZ ; 
 scalar_t__ TXDDS_MFG_SZ ; 
 int TXDDS_TABLE_SZ ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 char* txselect_list ; 

__attribute__((used)) static void FUNC5(struct qib_devdata *dd, int change)
{
	char *nxt, *str;
	u32 pidx, unit, port, deflt, h1;
	unsigned long val;
	int any = 0, seth1;
	int txdds_size;

	str = txselect_list;

	/* default number is validated in setup_txselect() */
	deflt = FUNC4(str, &nxt, 0);
	for (pidx = 0; pidx < dd->num_pports; ++pidx)
		dd->pport[pidx].cpspec->no_eep = deflt;

	txdds_size = TXDDS_TABLE_SZ + TXDDS_EXTRA_SZ;
	if (FUNC0(dd) || FUNC1(dd))
		txdds_size += TXDDS_MFG_SZ;

	while (*nxt && nxt[1]) {
		str = ++nxt;
		unit = FUNC4(str, &nxt, 0);
		if (nxt == str || !*nxt || *nxt != ',') {
			while (*nxt && *nxt++ != ' ') /* skip to next, if any */
				;
			continue;
		}
		str = ++nxt;
		port = FUNC4(str, &nxt, 0);
		if (nxt == str || *nxt != '=') {
			while (*nxt && *nxt++ != ' ') /* skip to next, if any */
				;
			continue;
		}
		str = ++nxt;
		val = FUNC4(str, &nxt, 0);
		if (nxt == str) {
			while (*nxt && *nxt++ != ' ') /* skip to next, if any */
				;
			continue;
		}
		if (val >= txdds_size)
			continue;
		seth1 = 0;
		h1 = 0; /* gcc thinks it might be used uninitted */
		if (*nxt == ',' && nxt[1]) {
			str = ++nxt;
			h1 = (u32)FUNC4(str, &nxt, 0);
			if (nxt == str)
				while (*nxt && *nxt++ != ' ') /* skip */
					;
			else
				seth1 = 1;
		}
		for (pidx = 0; dd->unit == unit && pidx < dd->num_pports;
		     ++pidx) {
			struct qib_pportdata *ppd = &dd->pport[pidx];

			if (ppd->port != port || !ppd->link_speed_supported)
				continue;
			ppd->cpspec->no_eep = val;
			if (seth1)
				ppd->cpspec->h1_val = h1;
			/* now change the IBC and serdes, overriding generic */
			FUNC2(ppd, 1);
			/* Re-enable the physical state machine on mezz boards
			 * now that the correct settings have been set.
			 * QSFP boards are handles by the QSFP event handler */
			if (FUNC1(dd) || FUNC0(dd))
				FUNC3(ppd, 0,
					    QLOGIC_IB_IBCC_LINKINITCMD_SLEEP);
			any++;
		}
		if (*nxt == '\n')
			break; /* done */
	}
	if (change && !any) {
		/* no specific setting, use the default.
		 * Change the IBC and serdes, but since it's
		 * general, don't override specific settings.
		 */
		for (pidx = 0; pidx < dd->num_pports; ++pidx)
			if (dd->pport[pidx].link_speed_supported)
				FUNC2(&dd->pport[pidx], 0);
	}
}