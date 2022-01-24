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
struct gru_blade_state {TYPE_1__* bs_kgts; int /*<<< orphan*/  bs_kgts_sema; } ;
struct TYPE_2__ {int /*<<< orphan*/  ts_gru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gru_blade_state** gru_base ; 
 int /*<<< orphan*/  FUNC2 (struct gru_blade_state*,int) ; 
 int /*<<< orphan*/  lock_kernel_context ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 

__attribute__((used)) static struct gru_blade_state *FUNC5(int blade_id)
{
	struct gru_blade_state *bs;
	int bid;

	FUNC0(lock_kernel_context);
again:
	bid = blade_id < 0 ? FUNC4() : blade_id;
	bs = gru_base[bid];

	/* Handle the case where migration occured while waiting for the sema */
	FUNC1(&bs->bs_kgts_sema);
	if (blade_id < 0 && bid != FUNC4()) {
		FUNC3(&bs->bs_kgts_sema);
		goto again;
	}
	if (!bs->bs_kgts || !bs->bs_kgts->ts_gru)
		FUNC2(bs, bid);
	return bs;

}