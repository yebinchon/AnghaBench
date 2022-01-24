#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  masked; int /*<<< orphan*/  pending; int /*<<< orphan*/  injected; } ;
struct TYPE_10__ {int /*<<< orphan*/  soft; int /*<<< orphan*/  nr; scalar_t__ injected; } ;
struct TYPE_9__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  has_error_code; int /*<<< orphan*/  nr; int /*<<< orphan*/  injected; } ;
struct kvm_vcpu_events {int flags; int /*<<< orphan*/  sipi_vector; TYPE_5__ nmi; TYPE_3__ interrupt; TYPE_2__ exception; } ;
struct TYPE_11__ {scalar_t__ pending; int /*<<< orphan*/  soft; int /*<<< orphan*/  nr; } ;
struct TYPE_8__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  has_error_code; int /*<<< orphan*/  nr; int /*<<< orphan*/  pending; } ;
struct TYPE_13__ {int /*<<< orphan*/  sipi_vector; int /*<<< orphan*/  nmi_pending; int /*<<< orphan*/  nmi_injected; TYPE_4__ interrupt; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_6__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* set_nmi_mask ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int KVM_VCPUEVENT_VALID_NMI_PENDING ; 
 int KVM_VCPUEVENT_VALID_SIPI_VECTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu,
					      struct kvm_vcpu_events *events)
{
	if (events->flags & ~(KVM_VCPUEVENT_VALID_NMI_PENDING
			      | KVM_VCPUEVENT_VALID_SIPI_VECTOR))
		return -EINVAL;

	FUNC3(vcpu);

	vcpu->arch.exception.pending = events->exception.injected;
	vcpu->arch.exception.nr = events->exception.nr;
	vcpu->arch.exception.has_error_code = events->exception.has_error_code;
	vcpu->arch.exception.error_code = events->exception.error_code;

	vcpu->arch.interrupt.pending = events->interrupt.injected;
	vcpu->arch.interrupt.nr = events->interrupt.nr;
	vcpu->arch.interrupt.soft = events->interrupt.soft;
	if (vcpu->arch.interrupt.pending && FUNC0(vcpu->kvm))
		FUNC1(vcpu->kvm);

	vcpu->arch.nmi_injected = events->nmi.injected;
	if (events->flags & KVM_VCPUEVENT_VALID_NMI_PENDING)
		vcpu->arch.nmi_pending = events->nmi.pending;
	kvm_x86_ops->set_nmi_mask(vcpu, events->nmi.masked);

	if (events->flags & KVM_VCPUEVENT_VALID_SIPI_VECTOR)
		vcpu->arch.sipi_vector = events->sipi_vector;

	FUNC4(vcpu);

	return 0;
}