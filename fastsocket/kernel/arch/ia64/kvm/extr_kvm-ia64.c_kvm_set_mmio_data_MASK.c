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
struct kvm_vcpu {int /*<<< orphan*/  mmio_data; int /*<<< orphan*/  mmio_is_write; } ;
struct kvm_mmio_req {int /*<<< orphan*/  state; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_IORESP_READY ; 
 struct kvm_mmio_req* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvm_mmio_req *p = FUNC0(vcpu);

	if (!vcpu->mmio_is_write)
		FUNC1(&p->data, vcpu->mmio_data, 8);
	p->state = STATE_IORESP_READY;
}