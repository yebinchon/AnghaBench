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
struct pvclock_vcpu_time_info {int dummy; } ;
typedef  int /*<<< orphan*/  cycle_t ;
struct TYPE_2__ {struct pvclock_vcpu_time_info time; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvclock_vcpu_time_info*) ; 
 int /*<<< orphan*/  xen_vcpu ; 

cycle_t FUNC3(void)
{
        struct pvclock_vcpu_time_info *src;
	cycle_t ret;

	src = &FUNC0(xen_vcpu)->time;
	ret = FUNC2(src);
	FUNC1(xen_vcpu);
	return ret;
}