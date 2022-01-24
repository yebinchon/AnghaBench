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
struct page {int dummy; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int gpa_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int UNMAPPED_GVA ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct page *FUNC2(struct kvm_vcpu *vcpu, gva_t gva)
{
	struct page *page;

	gpa_t gpa = FUNC1(vcpu, gva, NULL);

	if (gpa == UNMAPPED_GVA)
		return NULL;

	page = FUNC0(vcpu->kvm, gpa >> PAGE_SHIFT);

	return page;
}