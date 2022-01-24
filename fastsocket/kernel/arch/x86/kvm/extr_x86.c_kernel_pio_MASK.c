#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  port; scalar_t__ in; } ;
struct TYPE_3__ {TYPE_2__ pio; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, void *pd)
{
	/* TODO: String I/O for in kernel device */
	int r;

	if (vcpu->arch.pio.in)
		r = FUNC0(vcpu->kvm, KVM_PIO_BUS, vcpu->arch.pio.port,
				    vcpu->arch.pio.size, pd);
	else
		r = FUNC1(vcpu->kvm, KVM_PIO_BUS,
				     vcpu->arch.pio.port, vcpu->arch.pio.size,
				     pd);
	return r;
}