#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_6__ {TYPE_1__ pta; int /*<<< orphan*/  num; } ;
struct TYPE_5__ {TYPE_3__ vhpt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  VHPT_NUM_ENTRIES ; 
 int /*<<< orphan*/  VHPT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC2(struct kvm_vcpu *v)
{
	v->arch.vhpt.num = VHPT_NUM_ENTRIES;
	FUNC1(&v->arch.vhpt, VHPT_SHIFT);
	FUNC0(v->arch.vhpt.pta.val);
	/*Enable VHPT here?*/
}