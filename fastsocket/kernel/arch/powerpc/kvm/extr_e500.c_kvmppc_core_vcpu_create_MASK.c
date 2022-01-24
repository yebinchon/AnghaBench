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
struct kvm_vcpu {int dummy; } ;
struct kvmppc_vcpu_e500 {struct kvm_vcpu vcpu; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kvm_vcpu* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvmppc_vcpu_e500*) ; 
 struct kvmppc_vcpu_e500* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int FUNC3 (struct kvm_vcpu*,struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvmppc_vcpu_e500*) ; 

struct kvm_vcpu *FUNC6(struct kvm *kvm, unsigned int id)
{
	struct kvmppc_vcpu_e500 *vcpu_e500;
	struct kvm_vcpu *vcpu;
	int err;

	vcpu_e500 = FUNC2(kvm_vcpu_cache, GFP_KERNEL);
	if (!vcpu_e500) {
		err = -ENOMEM;
		goto out;
	}

	vcpu = &vcpu_e500->vcpu;
	err = FUNC3(vcpu, kvm, id);
	if (err)
		goto free_vcpu;

	err = FUNC5(vcpu_e500);
	if (err)
		goto uninit_vcpu;

	return vcpu;

uninit_vcpu:
	FUNC4(vcpu);
free_vcpu:
	FUNC1(kvm_vcpu_cache, vcpu_e500);
out:
	return FUNC0(err);
}