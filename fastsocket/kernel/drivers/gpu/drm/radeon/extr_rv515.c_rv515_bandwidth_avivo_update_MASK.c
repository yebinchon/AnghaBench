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
struct TYPE_13__ {scalar_t__ full; } ;
struct TYPE_12__ {scalar_t__ full; } ;
struct TYPE_18__ {scalar_t__ full; } ;
struct TYPE_16__ {scalar_t__ full; } ;
struct rv515_watermark {int lb_request_fifo_depth; TYPE_2__ priority_mark_max; TYPE_1__ priority_mark; TYPE_9__ consumption_rate; TYPE_5__ worst_case_latency; TYPE_9__ active_time; TYPE_5__ sclk; TYPE_5__ num_line_pair; TYPE_5__ dbpp; } ;
struct TYPE_15__ {TYPE_6__** crtcs; } ;
struct radeon_device {int disp_priority; TYPE_4__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
typedef  TYPE_5__ fixed20_12 ;
struct TYPE_14__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_17__ {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  D1MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  D1MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  D2MODE_PRIORITY_A_CNT ; 
 int /*<<< orphan*/  D2MODE_PRIORITY_B_CNT ; 
 int /*<<< orphan*/  LB_MAX_REQ_OUTSTANDING ; 
 int MODE_PRIORITY_ALWAYS_ON ; 
 int MODE_PRIORITY_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (TYPE_5__,TYPE_5__) ; 
 void* FUNC3 (TYPE_5__,TYPE_9__) ; 
 int FUNC4 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,TYPE_6__*,struct rv515_watermark*) ; 

void FUNC7(struct radeon_device *rdev)
{
	struct drm_display_mode *mode0 = NULL;
	struct drm_display_mode *mode1 = NULL;
	struct rv515_watermark wm0;
	struct rv515_watermark wm1;
	u32 tmp;
	u32 d1mode_priority_a_cnt = MODE_PRIORITY_OFF;
	u32 d2mode_priority_a_cnt = MODE_PRIORITY_OFF;
	fixed20_12 priority_mark02, priority_mark12, fill_rate;
	fixed20_12 a, b;

	if (rdev->mode_info.crtcs[0]->base.enabled)
		mode0 = &rdev->mode_info.crtcs[0]->base.mode;
	if (rdev->mode_info.crtcs[1]->base.enabled)
		mode1 = &rdev->mode_info.crtcs[1]->base.mode;
	FUNC5(rdev, mode0, mode1);

	FUNC6(rdev, rdev->mode_info.crtcs[0], &wm0);
	FUNC6(rdev, rdev->mode_info.crtcs[1], &wm1);

	tmp = wm0.lb_request_fifo_depth;
	tmp |= wm1.lb_request_fifo_depth << 16;
	FUNC0(LB_MAX_REQ_OUTSTANDING, tmp);

	if (mode0 && mode1) {
		if (FUNC4(wm0.dbpp) > 64)
			a.full = FUNC2(wm0.dbpp, wm0.num_line_pair);
		else
			a.full = wm0.num_line_pair.full;
		if (FUNC4(wm1.dbpp) > 64)
			b.full = FUNC2(wm1.dbpp, wm1.num_line_pair);
		else
			b.full = wm1.num_line_pair.full;
		a.full += b.full;
		fill_rate.full = FUNC2(wm0.sclk, a);
		if (wm0.consumption_rate.full > fill_rate.full) {
			b.full = wm0.consumption_rate.full - fill_rate.full;
			b.full = FUNC3(b, wm0.active_time);
			a.full = FUNC1(16);
			b.full = FUNC2(b, a);
			a.full = FUNC3(wm0.worst_case_latency,
						wm0.consumption_rate);
			priority_mark02.full = a.full + b.full;
		} else {
			a.full = FUNC3(wm0.worst_case_latency,
						wm0.consumption_rate);
			b.full = FUNC1(16 * 1000);
			priority_mark02.full = FUNC2(a, b);
		}
		if (wm1.consumption_rate.full > fill_rate.full) {
			b.full = wm1.consumption_rate.full - fill_rate.full;
			b.full = FUNC3(b, wm1.active_time);
			a.full = FUNC1(16);
			b.full = FUNC2(b, a);
			a.full = FUNC3(wm1.worst_case_latency,
						wm1.consumption_rate);
			priority_mark12.full = a.full + b.full;
		} else {
			a.full = FUNC3(wm1.worst_case_latency,
						wm1.consumption_rate);
			b.full = FUNC1(16 * 1000);
			priority_mark12.full = FUNC2(a, b);
		}
		if (wm0.priority_mark.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark.full;
		if (FUNC4(priority_mark02) < 0)
			priority_mark02.full = 0;
		if (wm0.priority_mark_max.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark_max.full;
		if (wm1.priority_mark.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark.full;
		if (FUNC4(priority_mark12) < 0)
			priority_mark12.full = 0;
		if (wm1.priority_mark_max.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark_max.full;
		d1mode_priority_a_cnt = FUNC4(priority_mark02);
		d2mode_priority_a_cnt = FUNC4(priority_mark12);
		if (rdev->disp_priority == 2) {
			d1mode_priority_a_cnt |= MODE_PRIORITY_ALWAYS_ON;
			d2mode_priority_a_cnt |= MODE_PRIORITY_ALWAYS_ON;
		}
	} else if (mode0) {
		if (FUNC4(wm0.dbpp) > 64)
			a.full = FUNC2(wm0.dbpp, wm0.num_line_pair);
		else
			a.full = wm0.num_line_pair.full;
		fill_rate.full = FUNC2(wm0.sclk, a);
		if (wm0.consumption_rate.full > fill_rate.full) {
			b.full = wm0.consumption_rate.full - fill_rate.full;
			b.full = FUNC3(b, wm0.active_time);
			a.full = FUNC1(16);
			b.full = FUNC2(b, a);
			a.full = FUNC3(wm0.worst_case_latency,
						wm0.consumption_rate);
			priority_mark02.full = a.full + b.full;
		} else {
			a.full = FUNC3(wm0.worst_case_latency,
						wm0.consumption_rate);
			b.full = FUNC1(16);
			priority_mark02.full = FUNC2(a, b);
		}
		if (wm0.priority_mark.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark.full;
		if (FUNC4(priority_mark02) < 0)
			priority_mark02.full = 0;
		if (wm0.priority_mark_max.full > priority_mark02.full)
			priority_mark02.full = wm0.priority_mark_max.full;
		d1mode_priority_a_cnt = FUNC4(priority_mark02);
		if (rdev->disp_priority == 2)
			d1mode_priority_a_cnt |= MODE_PRIORITY_ALWAYS_ON;
	} else if (mode1) {
		if (FUNC4(wm1.dbpp) > 64)
			a.full = FUNC2(wm1.dbpp, wm1.num_line_pair);
		else
			a.full = wm1.num_line_pair.full;
		fill_rate.full = FUNC2(wm1.sclk, a);
		if (wm1.consumption_rate.full > fill_rate.full) {
			b.full = wm1.consumption_rate.full - fill_rate.full;
			b.full = FUNC3(b, wm1.active_time);
			a.full = FUNC1(16);
			b.full = FUNC2(b, a);
			a.full = FUNC3(wm1.worst_case_latency,
						wm1.consumption_rate);
			priority_mark12.full = a.full + b.full;
		} else {
			a.full = FUNC3(wm1.worst_case_latency,
						wm1.consumption_rate);
			b.full = FUNC1(16 * 1000);
			priority_mark12.full = FUNC2(a, b);
		}
		if (wm1.priority_mark.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark.full;
		if (FUNC4(priority_mark12) < 0)
			priority_mark12.full = 0;
		if (wm1.priority_mark_max.full > priority_mark12.full)
			priority_mark12.full = wm1.priority_mark_max.full;
		d2mode_priority_a_cnt = FUNC4(priority_mark12);
		if (rdev->disp_priority == 2)
			d2mode_priority_a_cnt |= MODE_PRIORITY_ALWAYS_ON;
	}

	FUNC0(D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
	FUNC0(D1MODE_PRIORITY_B_CNT, d1mode_priority_a_cnt);
	FUNC0(D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
	FUNC0(D2MODE_PRIORITY_B_CNT, d2mode_priority_a_cnt);
}