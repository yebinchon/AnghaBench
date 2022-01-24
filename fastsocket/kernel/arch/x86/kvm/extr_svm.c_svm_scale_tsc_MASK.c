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
typedef  int /*<<< orphan*/  u64 ;
struct vcpu_svm {scalar_t__ tsc_ratio; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ TSC_RATIO_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static u64 FUNC2(struct kvm_vcpu *vcpu, u64 tsc)
{
	struct vcpu_svm *svm = FUNC1(vcpu);
	u64 _tsc = tsc;

	if (svm->tsc_ratio != TSC_RATIO_DEFAULT)
		_tsc = FUNC0(svm->tsc_ratio, tsc);

	return _tsc;
}