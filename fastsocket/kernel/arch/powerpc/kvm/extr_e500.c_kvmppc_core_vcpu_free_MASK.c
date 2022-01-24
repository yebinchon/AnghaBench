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
struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvmppc_vcpu_e500*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcpu_e500*) ; 
 struct kvmppc_vcpu_e500* FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC3(vcpu);

	FUNC2(vcpu_e500);
	FUNC1(vcpu);
	FUNC0(kvm_vcpu_cache, vcpu_e500);
}