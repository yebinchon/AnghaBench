#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dce6_wm_params {int disp_clk; int sclk; } ;
struct TYPE_7__ {void* full; } ;
typedef  TYPE_1__ fixed20_12 ;

/* Variables and functions */
 int FUNC0 (struct dce6_wm_params*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (TYPE_1__,TYPE_1__) ; 
 void* FUNC3 (TYPE_1__,TYPE_1__) ; 
 int FUNC4 (TYPE_1__) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static u32 FUNC6(struct dce6_wm_params *wm)
{
	/* Calculate the DMIF Request Bandwidth */
	fixed20_12 disp_clk_request_efficiency; /* 0.8 */
	fixed20_12 disp_clk, sclk, bandwidth;
	fixed20_12 a, b1, b2;
	u32 min_bandwidth;

	a.full = FUNC1(1000);
	disp_clk.full = FUNC1(wm->disp_clk);
	disp_clk.full = FUNC2(disp_clk, a);
	a.full = FUNC1(FUNC0(wm) / 2);
	b1.full = FUNC3(a, disp_clk);

	a.full = FUNC1(1000);
	sclk.full = FUNC1(wm->sclk);
	sclk.full = FUNC2(sclk, a);
	a.full = FUNC1(FUNC0(wm));
	b2.full = FUNC3(a, sclk);

	a.full = FUNC1(10);
	disp_clk_request_efficiency.full = FUNC1(8);
	disp_clk_request_efficiency.full = FUNC2(disp_clk_request_efficiency, a);

	min_bandwidth = FUNC5(FUNC4(b1), FUNC4(b2));

	a.full = FUNC1(min_bandwidth);
	bandwidth.full = FUNC3(a, disp_clk_request_efficiency);

	return FUNC4(bandwidth);
}