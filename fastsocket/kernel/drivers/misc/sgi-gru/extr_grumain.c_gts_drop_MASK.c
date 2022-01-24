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
struct gru_thread_state {scalar_t__ ts_gms; int /*<<< orphan*/  ts_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  gts_free ; 
 int /*<<< orphan*/  FUNC3 (struct gru_thread_state*) ; 

void FUNC4(struct gru_thread_state *gts)
{
	if (gts && FUNC1(&gts->ts_refcnt) == 0) {
		if (gts->ts_gms)
			FUNC2(gts->ts_gms);
		FUNC3(gts);
		FUNC0(gts_free);
	}
}