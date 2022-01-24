#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {scalar_t__ full; } ;
struct evergreen_wm_params {int disp_clk; int num_heads; int vtaps; int bytes_per_pixel; int src_width; int active_time; scalar_t__ interlaced; TYPE_1__ vsc; } ;
struct TYPE_9__ {scalar_t__ full; } ;
typedef  TYPE_2__ fixed20_12 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (TYPE_2__,TYPE_2__) ; 
 scalar_t__ FUNC2 (TYPE_2__,TYPE_2__) ; 
 int FUNC3 (TYPE_2__) ; 
 int FUNC4 (struct evergreen_wm_params*) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static u32 FUNC6(struct evergreen_wm_params *wm)
{
	/* First calcualte the latency in ns */
	u32 mc_latency = 2000; /* 2000 ns. */
	u32 available_bandwidth = FUNC4(wm);
	u32 worst_chunk_return_time = (512 * 8 * 1000) / available_bandwidth;
	u32 cursor_line_pair_return_time = (128 * 4 * 1000) / available_bandwidth;
	u32 dc_latency = 40000000 / wm->disp_clk; /* dc pipe latency */
	u32 other_heads_data_return_time = ((wm->num_heads + 1) * worst_chunk_return_time) +
		(wm->num_heads * cursor_line_pair_return_time);
	u32 latency = mc_latency + other_heads_data_return_time + dc_latency;
	u32 max_src_lines_per_dst_line, lb_fill_bw, line_fill_time;
	fixed20_12 a, b, c;

	if (wm->num_heads == 0)
		return 0;

	a.full = FUNC0(2);
	b.full = FUNC0(1);
	if ((wm->vsc.full > a.full) ||
	    ((wm->vsc.full > b.full) && (wm->vtaps >= 3)) ||
	    (wm->vtaps >= 5) ||
	    ((wm->vsc.full >= a.full) && wm->interlaced))
		max_src_lines_per_dst_line = 4;
	else
		max_src_lines_per_dst_line = 2;

	a.full = FUNC0(available_bandwidth);
	b.full = FUNC0(wm->num_heads);
	a.full = FUNC1(a, b);

	b.full = FUNC0(1000);
	c.full = FUNC0(wm->disp_clk);
	b.full = FUNC1(c, b);
	c.full = FUNC0(wm->bytes_per_pixel);
	b.full = FUNC2(b, c);

	lb_fill_bw = FUNC5(FUNC3(a), FUNC3(b));

	a.full = FUNC0(max_src_lines_per_dst_line * wm->src_width * wm->bytes_per_pixel);
	b.full = FUNC0(1000);
	c.full = FUNC0(lb_fill_bw);
	b.full = FUNC1(c, b);
	a.full = FUNC1(a, b);
	line_fill_time = FUNC3(a);

	if (line_fill_time < wm->active_time)
		return latency;
	else
		return latency + (line_fill_time - wm->active_time);

}