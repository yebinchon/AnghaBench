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
struct gru_thread_state {int ts_ctxnum; struct gru_mm_struct* ts_gms; } ;
struct gru_state {size_t gs_gid; int /*<<< orphan*/  gs_asid_lock; } ;
struct gru_mm_tracker {unsigned short mt_ctxbitmap; } ;
struct gru_mm_struct {int /*<<< orphan*/  ms_asid_lock; int /*<<< orphan*/ * ms_asidmap; struct gru_mm_tracker* ms_asids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,struct gru_thread_state*,struct gru_mm_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gru_state *gru,
					struct gru_thread_state *gts)
{
	struct gru_mm_struct *gms = gts->ts_gms;
	struct gru_mm_tracker *asids;
	unsigned short ctxbitmap;

	asids = &gms->ms_asids[gru->gs_gid];
	ctxbitmap = (1 << gts->ts_ctxnum);
	FUNC2(&gms->ms_asid_lock);
	FUNC2(&gru->gs_asid_lock);
	FUNC0((asids->mt_ctxbitmap & ctxbitmap) != ctxbitmap);
	asids->mt_ctxbitmap ^= ctxbitmap;
	FUNC1(grudev, "gid %d, gts %p, gms %p, ctxnum 0x%d, asidmap 0x%lx\n",
		gru->gs_gid, gts, gms, gts->ts_ctxnum, gms->ms_asidmap[0]);
	FUNC3(&gru->gs_asid_lock);
	FUNC3(&gms->ms_asid_lock);
}