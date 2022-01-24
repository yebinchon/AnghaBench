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
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;
struct TYPE_2__ {scalar_t__ cpl; } ;

/* Variables and functions */
 unsigned long DOMN_PAL_REQUEST ; 
 unsigned long DOMN_SAL_REQUEST ; 
 struct kvm_vcpu* current_vcpu ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 TYPE_1__* FUNC2 (struct kvm_pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,unsigned long,int,struct kvm_pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 

void  FUNC10(unsigned long ifa, struct kvm_pt_regs *regs,
		unsigned long isr, unsigned long iim)
{
	struct kvm_vcpu *v = current_vcpu;
	long psr;

	if (FUNC2(regs)->cpl == 0) {
		/* Allow hypercalls only when cpl = 0.  */
		if (iim == DOMN_PAL_REQUEST) {
			FUNC4(psr);
			FUNC6(v);
			FUNC9(v);
			FUNC0(v);
			FUNC8(v);
			FUNC3(psr);
			return;
		} else if (iim == DOMN_SAL_REQUEST) {
			FUNC4(psr);
			FUNC7(v);
			FUNC9(v);
			FUNC1(v);
			FUNC8(v);
			FUNC3(psr);
			return;
		}
	}
	FUNC5(ifa, isr, iim, 11, regs);
}