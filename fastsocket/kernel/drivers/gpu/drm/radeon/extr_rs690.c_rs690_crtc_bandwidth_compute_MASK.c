#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ full; } ;
struct TYPE_19__ {scalar_t__ full; } ;
struct TYPE_18__ {scalar_t__ full; } ;
struct TYPE_15__ {void* full; } ;
struct rs690_watermark {int lb_request_fifo_depth; TYPE_8__ priority_mark; TYPE_8__ priority_mark_max; TYPE_5__ worst_case_latency; TYPE_4__ dbpp; TYPE_8__ num_line_pair; TYPE_8__ active_time; TYPE_1__ consumption_rate; } ;
struct TYPE_17__ {TYPE_8__ sclk; TYPE_8__ max_bandwidth; TYPE_8__ ht_bandwidth; TYPE_8__ k8_bandwidth; TYPE_8__ igp_sideport_mclk; TYPE_8__ sideport_bandwidth; TYPE_8__ core_bandwidth; } ;
struct TYPE_16__ {scalar_t__ igp_sideport_enabled; } ;
struct radeon_device {TYPE_3__ pm; TYPE_2__ mc; } ;
struct drm_display_mode {int crtc_hdisplay; int clock; int crtc_htotal; } ;
struct TYPE_20__ {struct drm_display_mode mode; int /*<<< orphan*/  enabled; } ;
struct TYPE_21__ {scalar_t__ full; } ;
struct radeon_crtc {scalar_t__ rmx_type; TYPE_6__ base; TYPE_8__ hsc; TYPE_7__ vsc; } ;
typedef  TYPE_8__ fixed20_12 ;

/* Variables and functions */
 scalar_t__ RMX_OFF ; 
 void* FUNC0 (TYPE_8__) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (TYPE_8__,TYPE_8__) ; 
 void* FUNC3 (TYPE_8__,TYPE_8__) ; 
 int FUNC4 (TYPE_8__) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
				  struct radeon_crtc *crtc,
				  struct rs690_watermark *wm)
{
	struct drm_display_mode *mode = &crtc->base.mode;
	fixed20_12 a, b, c;
	fixed20_12 pclk, request_fifo_depth, tolerable_latency, estimated_width;
	fixed20_12 consumption_time, line_time, chunk_time, read_delay_latency;

	if (!crtc->base.enabled) {
		/* FIXME: wouldn't it better to set priority mark to maximum */
		wm->lb_request_fifo_depth = 4;
		return;
	}

	if (crtc->vsc.full > FUNC1(2))
		wm->num_line_pair.full = FUNC1(2);
	else
		wm->num_line_pair.full = FUNC1(1);

	b.full = FUNC1(mode->crtc_hdisplay);
	c.full = FUNC1(256);
	a.full = FUNC2(b, c);
	request_fifo_depth.full = FUNC3(a, wm->num_line_pair);
	request_fifo_depth.full = FUNC0(request_fifo_depth);
	if (a.full < FUNC1(4)) {
		wm->lb_request_fifo_depth = 4;
	} else {
		wm->lb_request_fifo_depth = FUNC4(request_fifo_depth);
	}

	/* Determine consumption rate
	 *  pclk = pixel clock period(ns) = 1000 / (mode.clock / 1000)
	 *  vtaps = number of vertical taps,
	 *  vsc = vertical scaling ratio, defined as source/destination
	 *  hsc = horizontal scaling ration, defined as source/destination
	 */
	a.full = FUNC1(mode->clock);
	b.full = FUNC1(1000);
	a.full = FUNC2(a, b);
	pclk.full = FUNC2(b, a);
	if (crtc->rmx_type != RMX_OFF) {
		b.full = FUNC1(2);
		if (crtc->vsc.full > b.full)
			b.full = crtc->vsc.full;
		b.full = FUNC3(b, crtc->hsc);
		c.full = FUNC1(2);
		b.full = FUNC2(b, c);
		consumption_time.full = FUNC2(pclk, b);
	} else {
		consumption_time.full = pclk.full;
	}
	a.full = FUNC1(1);
	wm->consumption_rate.full = FUNC2(a, consumption_time);


	/* Determine line time
	 *  LineTime = total time for one line of displayhtotal
	 *  LineTime = total number of horizontal pixels
	 *  pclk = pixel clock period(ns)
	 */
	a.full = FUNC1(crtc->base.mode.crtc_htotal);
	line_time.full = FUNC3(a, pclk);

	/* Determine active time
	 *  ActiveTime = time of active region of display within one line,
	 *  hactive = total number of horizontal active pixels
	 *  htotal = total number of horizontal pixels
	 */
	a.full = FUNC1(crtc->base.mode.crtc_htotal);
	b.full = FUNC1(crtc->base.mode.crtc_hdisplay);
	wm->active_time.full = FUNC3(line_time, b);
	wm->active_time.full = FUNC2(wm->active_time, a);

	/* Maximun bandwidth is the minimun bandwidth of all component */
	rdev->pm.max_bandwidth = rdev->pm.core_bandwidth;
	if (rdev->mc.igp_sideport_enabled) {
		if (rdev->pm.max_bandwidth.full > rdev->pm.sideport_bandwidth.full &&
			rdev->pm.sideport_bandwidth.full)
			rdev->pm.max_bandwidth = rdev->pm.sideport_bandwidth;
		read_delay_latency.full = FUNC1(370 * 800 * 1000);
		read_delay_latency.full = FUNC2(read_delay_latency,
			rdev->pm.igp_sideport_mclk);
	} else {
		if (rdev->pm.max_bandwidth.full > rdev->pm.k8_bandwidth.full &&
			rdev->pm.k8_bandwidth.full)
			rdev->pm.max_bandwidth = rdev->pm.k8_bandwidth;
		if (rdev->pm.max_bandwidth.full > rdev->pm.ht_bandwidth.full &&
			rdev->pm.ht_bandwidth.full)
			rdev->pm.max_bandwidth = rdev->pm.ht_bandwidth;
		read_delay_latency.full = FUNC1(5000);
	}

	/* sclk = system clocks(ns) = 1000 / max_bandwidth / 16 */
	a.full = FUNC1(16);
	rdev->pm.sclk.full = FUNC3(rdev->pm.max_bandwidth, a);
	a.full = FUNC1(1000);
	rdev->pm.sclk.full = FUNC2(a, rdev->pm.sclk);
	/* Determine chunk time
	 * ChunkTime = the time it takes the DCP to send one chunk of data
	 * to the LB which consists of pipeline delay and inter chunk gap
	 * sclk = system clock(ns)
	 */
	a.full = FUNC1(256 * 13);
	chunk_time.full = FUNC3(rdev->pm.sclk, a);
	a.full = FUNC1(10);
	chunk_time.full = FUNC2(chunk_time, a);

	/* Determine the worst case latency
	 * NumLinePair = Number of line pairs to request(1=2 lines, 2=4 lines)
	 * WorstCaseLatency = worst case time from urgent to when the MC starts
	 *                    to return data
	 * READ_DELAY_IDLE_MAX = constant of 1us
	 * ChunkTime = time it takes the DCP to send one chunk of data to the LB
	 *             which consists of pipeline delay and inter chunk gap
	 */
	if (FUNC4(wm->num_line_pair) > 1) {
		a.full = FUNC1(3);
		wm->worst_case_latency.full = FUNC3(a, chunk_time);
		wm->worst_case_latency.full += read_delay_latency.full;
	} else {
		a.full = FUNC1(2);
		wm->worst_case_latency.full = FUNC3(a, chunk_time);
		wm->worst_case_latency.full += read_delay_latency.full;
	}

	/* Determine the tolerable latency
	 * TolerableLatency = Any given request has only 1 line time
	 *                    for the data to be returned
	 * LBRequestFifoDepth = Number of chunk requests the LB can
	 *                      put into the request FIFO for a display
	 *  LineTime = total time for one line of display
	 *  ChunkTime = the time it takes the DCP to send one chunk
	 *              of data to the LB which consists of
	 *  pipeline delay and inter chunk gap
	 */
	if ((2+wm->lb_request_fifo_depth) >= FUNC4(request_fifo_depth)) {
		tolerable_latency.full = line_time.full;
	} else {
		tolerable_latency.full = FUNC1(wm->lb_request_fifo_depth - 2);
		tolerable_latency.full = request_fifo_depth.full - tolerable_latency.full;
		tolerable_latency.full = FUNC3(tolerable_latency, chunk_time);
		tolerable_latency.full = line_time.full - tolerable_latency.full;
	}
	/* We assume worst case 32bits (4 bytes) */
	wm->dbpp.full = FUNC1(4 * 8);

	/* Determine the maximum priority mark
	 *  width = viewport width in pixels
	 */
	a.full = FUNC1(16);
	wm->priority_mark_max.full = FUNC1(crtc->base.mode.crtc_hdisplay);
	wm->priority_mark_max.full = FUNC2(wm->priority_mark_max, a);
	wm->priority_mark_max.full = FUNC0(wm->priority_mark_max);

	/* Determine estimated width */
	estimated_width.full = tolerable_latency.full - wm->worst_case_latency.full;
	estimated_width.full = FUNC2(estimated_width, consumption_time);
	if (FUNC4(estimated_width) > crtc->base.mode.crtc_hdisplay) {
		wm->priority_mark.full = FUNC1(10);
	} else {
		a.full = FUNC1(16);
		wm->priority_mark.full = FUNC2(estimated_width, a);
		wm->priority_mark.full = FUNC0(wm->priority_mark);
		wm->priority_mark.full = wm->priority_mark_max.full - wm->priority_mark.full;
	}
}