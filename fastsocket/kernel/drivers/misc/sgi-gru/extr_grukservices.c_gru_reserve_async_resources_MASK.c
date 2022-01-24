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
struct gru_thread_state {scalar_t__ ts_gru; } ;
struct gru_blade_state {int bs_async_dsr_bytes; int bs_async_cbrs; int /*<<< orphan*/  bs_kgts_sema; struct gru_thread_state* bs_kgts; struct completion* bs_async_wq; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gru_blade_state** gru_base ; 
 int /*<<< orphan*/  FUNC2 (struct gru_thread_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

unsigned long FUNC4(int blade_id, int cbrs, int dsr_bytes,
			struct completion *cmp)
{
	struct gru_blade_state *bs;
	struct gru_thread_state *kgts;
	int ret = 0;

	bs = gru_base[blade_id];

	FUNC1(&bs->bs_kgts_sema);

	/* Verify no resources already reserved */
	if (bs->bs_async_dsr_bytes + bs->bs_async_cbrs)
		goto done;
	bs->bs_async_dsr_bytes = dsr_bytes;
	bs->bs_async_cbrs = cbrs;
	bs->bs_async_wq = cmp;
	kgts = bs->bs_kgts;

	/* Resources changed. Unload context if already loaded */
	if (kgts && kgts->ts_gru)
		FUNC2(kgts, 0);
	ret = FUNC0(blade_id);

done:
	FUNC3(&bs->bs_kgts_sema);
	return ret;
}