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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
struct desc_struct {int dummy; } ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct desc_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gpa_t FUNC2(struct kvm_vcpu *vcpu,
			       struct desc_struct *seg_desc)
{
	u32 base_addr = FUNC0(seg_desc);

	return FUNC1(vcpu, base_addr, NULL);
}