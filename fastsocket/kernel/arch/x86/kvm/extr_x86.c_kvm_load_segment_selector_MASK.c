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
typedef  int /*<<< orphan*/  u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int /*<<< orphan*/  selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct kvm_segment*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct kvm_segment*,int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, u16 sel, int seg)
{
	struct kvm_segment kvm_seg;
	FUNC0(vcpu, &kvm_seg, seg);
	kvm_seg.selector = sel;
	FUNC1(vcpu, &kvm_seg, seg);
}