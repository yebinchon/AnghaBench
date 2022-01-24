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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  kvm; } ;
struct vcpu_svm {TYPE_1__ vcpu; } ;
struct page {int dummy; } ;
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 void* FUNC2 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void *FUNC5(struct vcpu_svm *svm, u64 gpa, enum km_type idx)
{
	struct page *page;

	page = FUNC0(svm->vcpu.kvm, gpa >> PAGE_SHIFT);
	if (FUNC1(page))
		goto error;

	return FUNC2(page, idx);

error:
	FUNC4(page);
	FUNC3(&svm->vcpu, 0);

	return NULL;
}