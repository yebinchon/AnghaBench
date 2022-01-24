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
typedef  int /*<<< orphan*/  u64 ;
struct hw_perf_event {int dummy; } ;
struct cpu_hw_events {int /*<<< orphan*/  pcr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* pcr_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct cpu_hw_events *cpuc, struct hw_perf_event *hwc, int idx)
{
	u64 mask = FUNC0(idx);
	u64 nop = FUNC1(idx);
	u64 val;

	val = cpuc->pcr;
	val &= ~mask;
	val |= nop;
	cpuc->pcr = val;

	pcr_ops->write(cpuc->pcr);
}