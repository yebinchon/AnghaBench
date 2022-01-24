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
typedef  int u32 ;
struct TYPE_3__ {int selector; int base; int limit; void* ar; } ;
struct TYPE_4__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  gs; int /*<<< orphan*/  ds; int /*<<< orphan*/  es; scalar_t__ vm86_active; TYPE_1__ tr; } ;
struct vcpu_vmx {TYPE_2__ rmode; } ;
struct kvm_vmx_segment_field {int /*<<< orphan*/  ar_bytes; int /*<<< orphan*/  base; int /*<<< orphan*/  selector; int /*<<< orphan*/  limit; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; int base; int limit; scalar_t__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_CS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_CS_BASE ; 
 int /*<<< orphan*/  GUEST_CS_LIMIT ; 
 int /*<<< orphan*/  GUEST_CS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_SS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_SS_BASE ; 
 int /*<<< orphan*/  GUEST_SS_LIMIT ; 
 int /*<<< orphan*/  GUEST_SS_SELECTOR ; 
#define  VCPU_SREG_CS 133 
#define  VCPU_SREG_DS 132 
#define  VCPU_SREG_ES 131 
#define  VCPU_SREG_FS 130 
#define  VCPU_SREG_GS 129 
 int VCPU_SREG_LDTR ; 
#define  VCPU_SREG_SS 128 
 int VCPU_SREG_TR ; 
 scalar_t__ enable_unrestricted_guest ; 
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/ *) ; 
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct kvm_segment*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu,
			    struct kvm_segment *var, int seg)
{
	struct vcpu_vmx *vmx = FUNC1(vcpu);
	struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];
	u32 ar;

	if (vmx->rmode.vm86_active && seg == VCPU_SREG_TR) {
		FUNC3(sf->selector, var->selector);
		vmx->rmode.tr.selector = var->selector;
		vmx->rmode.tr.base = var->base;
		vmx->rmode.tr.limit = var->limit;
		vmx->rmode.tr.ar = FUNC6(var);
		return;
	}
	FUNC5(sf->base, var->base);
	FUNC4(sf->limit, var->limit);
	FUNC3(sf->selector, var->selector);
	if (vmx->rmode.vm86_active && var->s) {
		/*
		 * Hack real-mode segments into vm86 compatibility.
		 */
		if (var->base == 0xffff0000 && var->selector == 0xf000)
			FUNC5(sf->base, 0xf0000);
		ar = 0xf3;
	} else
		ar = FUNC6(var);

	/*
	 *   Fix the "Accessed" bit in AR field of segment registers for older
	 * qemu binaries.
	 *   IA32 arch specifies that at the time of processor reset the
	 * "Accessed" bit in the AR field of segment registers is 1. And qemu
	 * is setting it to 0 in the usedland code. This causes invalid guest
	 * state vmexit when "unrestricted guest" mode is turned on.
	 *    Fix for this setup issue in cpu_reset is being pushed in the qemu
	 * tree. Newer qemu binaries with that qemu fix would not need this
	 * kvm hack.
	 */
	if (enable_unrestricted_guest && (seg != VCPU_SREG_LDTR))
		ar |= 0x1; /* Accessed */

	FUNC4(sf->ar_bytes, ar);

	/*
	 * Fix segments for real mode guest in hosts that don't have
	 * "unrestricted_mode" or it was disabled.
	 * This is done to allow migration of the guests from hosts with
	 * unrestricted guest like Westmere to older host that don't have
	 * unrestricted guest like Nehelem.
	 */
	if (!enable_unrestricted_guest && vmx->rmode.vm86_active) {
		switch (seg) {
		case VCPU_SREG_CS:
			FUNC4(GUEST_CS_AR_BYTES, 0xf3);
			FUNC4(GUEST_CS_LIMIT, 0xffff);
			if (FUNC2(GUEST_CS_BASE) == 0xffff0000)
				FUNC5(GUEST_CS_BASE, 0xf0000);
			FUNC3(GUEST_CS_SELECTOR,
				     FUNC2(GUEST_CS_BASE) >> 4);
			break;
		case VCPU_SREG_ES:
			FUNC0(VCPU_SREG_ES, &vmx->rmode.es);
			break;
		case VCPU_SREG_DS:
			FUNC0(VCPU_SREG_DS, &vmx->rmode.ds);
			break;
		case VCPU_SREG_GS:
			FUNC0(VCPU_SREG_GS, &vmx->rmode.gs);
			break;
		case VCPU_SREG_FS:
			FUNC0(VCPU_SREG_FS, &vmx->rmode.fs);
			break;
		case VCPU_SREG_SS:
			FUNC3(GUEST_SS_SELECTOR,
				     FUNC2(GUEST_SS_BASE) >> 4);
			FUNC4(GUEST_SS_LIMIT, 0xffff);
			FUNC4(GUEST_SS_AR_BYTES, 0xf3);
			break;
		}
	}
}