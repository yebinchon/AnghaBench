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
struct vcpu_vmx {int dummy; } ;
struct perf_guest_switch_msr {scalar_t__ host; scalar_t__ guest; int /*<<< orphan*/  msr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vcpu_vmx*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 struct perf_guest_switch_msr* FUNC2 (int*) ; 

__attribute__((used)) static void FUNC3(struct vcpu_vmx *vmx)
{
	int i, nr_msrs;
	struct perf_guest_switch_msr *msrs;

	msrs = FUNC2(&nr_msrs);

	if (!msrs)
		return;

	for (i = 0; i < nr_msrs; i++)
		if (msrs[i].host == msrs[i].guest)
			FUNC1(vmx, msrs[i].msr);
		else
			FUNC0(vmx, msrs[i].msr, msrs[i].guest,
					msrs[i].host);
}