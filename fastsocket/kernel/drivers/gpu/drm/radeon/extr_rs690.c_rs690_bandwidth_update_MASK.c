#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_14__ {scalar_t__ full; } ;
struct TYPE_13__ {scalar_t__ full; } ;
struct TYPE_18__ {scalar_t__ full; } ;
struct TYPE_16__ {scalar_t__ full; } ;
struct rs690_watermark {int lb_request_fifo_depth; TYPE_3__ priority_mark_max; TYPE_2__ priority_mark; TYPE_9__ consumption_rate; TYPE_5__ worst_case_latency; TYPE_9__ active_time; TYPE_5__ sclk; TYPE_9__ num_line_pair; TYPE_5__ dbpp; } ;
struct TYPE_12__ {TYPE_6__** crtcs; } ;
struct radeon_device {int disp_priority; scalar_t__ family; TYPE_1__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
typedef  TYPE_5__ fixed20_12 ;
struct TYPE_15__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_17__ {TYPE_4__ base; } ;

/* Variables and functions */
 scalar_t__ CHIP_RS690 ; 
 scalar_t__ CHIP_RS740 ; 
 scalar_t__ CHIP_RS780 ; 
 scalar_t__ CHIP_RS880 ; 
 int C_000104_MC_DISP0R_INIT_LAT ; 
 int C_000104_MC_DISP1R_INIT_LAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000104_MC_INIT_MISC_LAT_TIMER ; 
 int /*<<< orphan*/  R_006548_D1MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  R_00654C_D1MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  R_006C9C_DCP_CONTROL ; 
 int /*<<< orphan*/  R_006D48_D2MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  R_006D4C_D2MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  R_006D58_LB_MAX_REQ_OUTSTANDING ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (TYPE_5__,TYPE_5__) ; 
 void* FUNC10 (TYPE_5__,TYPE_9__) ; 
 int FUNC11 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,TYPE_6__*,struct rs690_watermark*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ; 

void FUNC15(struct radeon_device *rdev)
{
	struct drm_display_mode *mode0 = NULL;
	struct drm_display_mode *mode1 = NULL;
	struct rs690_watermark wm0;
	struct rs690_watermark wm1;
	u32 tmp;
	u32 d1mode_priority_a_cnt = FUNC4(1);
	u32 d2mode_priority_a_cnt = FUNC4(1);
	fixed20_12 priority_mark02, priority_mark12, fill_rate;
	fixed20_12 a, b;

	FUNC12(rdev);

	if (rdev->mode_info.crtcs[0]->base.enabled)
		mode0 = &rdev->mode_info.crtcs[0]->base.mode;
	if (rdev->mode_info.crtcs[1]->base.enabled)
		mode1 = &rdev->mode_info.crtcs[1]->base.mode;
	/*
	 * Set display0/1 priority up in the memory controller for
	 * modes if the user specifies HIGH for displaypriority
	 * option.
	 */
	if ((rdev->disp_priority == 2) &&
	    ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740))) {
		tmp = FUNC0(R_000104_MC_INIT_MISC_LAT_TIMER);
		tmp &= C_000104_MC_DISP0R_INIT_LAT;
		tmp &= C_000104_MC_DISP1R_INIT_LAT;
		if (mode0)
			tmp |= FUNC1(1);
		if (mode1)
			tmp |= FUNC2(1);
		FUNC7(R_000104_MC_INIT_MISC_LAT_TIMER, tmp);
	}
	FUNC14(rdev, mode0, mode1);

	if ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740))
		FUNC6(R_006C9C_DCP_CONTROL, 0);
	if ((rdev->family == CHIP_RS780) || (rdev->family == CHIP_RS880))
		FUNC6(R_006C9C_DCP_CONTROL, 2);

	FUNC13(rdev, rdev->mode_info.crtcs[0], &wm0);
	FUNC13(rdev, rdev->mode_info.crtcs[1], &wm1);

	tmp = (wm0.lb_request_fifo_depth - 1);
	tmp |= (wm1.lb_request_fifo_depth - 1) << 16;
	FUNC6(R_006D58_LB_MAX_REQ_OUTSTANDING, tmp);

	if (mode0 && mode1) {
		if (FUNC11(wm0.dbpp) > 64)
			a.full = FUNC10(wm0.dbpp, wm0.num_line_pair);
		else
			a.full = wm0.num_line_pair.full;
		if (FUNC11(wm1.dbpp) > 64)
			b.full = FUNC10(wm1.dbpp, wm1.num_line_pair);
		else
			b.full = wm1.num_line_pair.full;
		a.full += b.full;
		fill_rate.full = FUNC9(wm0.sclk, a);
		if (wm0.consumption_rate.full > fill_rate.full) {
			b.full = wm0.consumption_rate.full - fill_rate.full;
			b.full = FUNC10(b, wm0.active_time);
			a.full = FUNC10(wm0.worst_case_latency,
						wm0.consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC8(16 * 1000);
			priority_mark02.full = FUNC9(a, b);
		} else {
			a.full = FUNC10(wm0.worst_case_latency,
						wm0.consumption_rate);
			b.full = FUNC8(16 * 1000);
			priority_mark02.full = FUNC9(a, b);
		}
		if (wm1.consumption_rate.full > fill_rate.full) {
			b.full = wm1.consumption_rate.full - fill_rate.full;
			b.full = FUNC10(b, wm1.active_time);
			a.full = FUNC10(wm1.worst_case_latency,
						wm1.consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC8(16 * 1000);
			priority_mark12.full = FUNC9(a, b);
		} else {
			a.full = FUNC10(wm1.worst_case_latency,
						wm1.consumption_rate);
			b.full = FUNC8(16 * 1000);
			priority_mark12.full = FUNC9(a, b);
		}
		if (wm0.priority_mark.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark.full;
		if (FUNC11(priority_mark02) < 0)
			priority_mark02.full = 0;
		if (wm0.priority_mark_max.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark_max.full;
		if (wm1.priority_mark.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark.full;
		if (FUNC11(priority_mark12) < 0)
			priority_mark12.full = 0;
		if (wm1.priority_mark_max.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark_max.full;
		d1mode_priority_a_cnt = FUNC11(priority_mark02);
		d2mode_priority_a_cnt = FUNC11(priority_mark12);
		if (rdev->disp_priority == 2) {
			d1mode_priority_a_cnt |= FUNC3(1);
			d2mode_priority_a_cnt |= FUNC5(1);
		}
	} else if (mode0) {
		if (FUNC11(wm0.dbpp) > 64)
			a.full = FUNC10(wm0.dbpp, wm0.num_line_pair);
		else
			a.full = wm0.num_line_pair.full;
		fill_rate.full = FUNC9(wm0.sclk, a);
		if (wm0.consumption_rate.full > fill_rate.full) {
			b.full = wm0.consumption_rate.full - fill_rate.full;
			b.full = FUNC10(b, wm0.active_time);
			a.full = FUNC10(wm0.worst_case_latency,
						wm0.consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC8(16 * 1000);
			priority_mark02.full = FUNC9(a, b);
		} else {
			a.full = FUNC10(wm0.worst_case_latency,
						wm0.consumption_rate);
			b.full = FUNC8(16 * 1000);
			priority_mark02.full = FUNC9(a, b);
		}
		if (wm0.priority_mark.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark.full;
		if (FUNC11(priority_mark02) < 0)
			priority_mark02.full = 0;
		if (wm0.priority_mark_max.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark_max.full;
		d1mode_priority_a_cnt = FUNC11(priority_mark02);
		if (rdev->disp_priority == 2)
			d1mode_priority_a_cnt |= FUNC3(1);
	} else if (mode1) {
		if (FUNC11(wm1.dbpp) > 64)
			a.full = FUNC10(wm1.dbpp, wm1.num_line_pair);
		else
			a.full = wm1.num_line_pair.full;
		fill_rate.full = FUNC9(wm1.sclk, a);
		if (wm1.consumption_rate.full > fill_rate.full) {
			b.full = wm1.consumption_rate.full - fill_rate.full;
			b.full = FUNC10(b, wm1.active_time);
			a.full = FUNC10(wm1.worst_case_latency,
						wm1.consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC8(16 * 1000);
			priority_mark12.full = FUNC9(a, b);
		} else {
			a.full = FUNC10(wm1.worst_case_latency,
						wm1.consumption_rate);
			b.full = FUNC8(16 * 1000);
			priority_mark12.full = FUNC9(a, b);
		}
		if (wm1.priority_mark.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark.full;
		if (FUNC11(priority_mark12) < 0)
			priority_mark12.full = 0;
		if (wm1.priority_mark_max.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark_max.full;
		d2mode_priority_a_cnt = FUNC11(priority_mark12);
		if (rdev->disp_priority == 2)
			d2mode_priority_a_cnt |= FUNC5(1);
	}

	FUNC6(R_006548_D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
	FUNC6(R_00654C_D1MODE_PRIORITY_B_CNT, d1mode_priority_a_cnt);
	FUNC6(R_006D48_D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
	FUNC6(R_006D4C_D2MODE_PRIORITY_B_CNT, d2mode_priority_a_cnt);
}