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
typedef  int u64 ;
struct hw_perf_event {int idx; int /*<<< orphan*/  config_base; } ;

/* Variables and functions */
 int X86_PMC_IDX_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hw_perf_event *hwc)
{
	int idx = hwc->idx - X86_PMC_IDX_FIXED;
	u64 ctrl_val, mask;

	mask = 0xfULL << (idx * 4);

	FUNC0(hwc->config_base, ctrl_val);
	ctrl_val &= ~mask;
	FUNC1(hwc->config_base, ctrl_val);
}