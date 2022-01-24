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
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, gfn_t gfn, pfn_t pfn)
{
	FUNC3(pfn);
	if (FUNC2(pfn)) {
		FUNC4(FUNC0(kvm, gfn), current);
		return 0;
	} else if (FUNC1(pfn))
		return -EFAULT;

	return 1;
}