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
union ia64_rr {unsigned long ps; int /*<<< orphan*/  val; } ;
typedef  unsigned long u64 ;
struct thash_data {unsigned long etag; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 unsigned long INVALID_TI_TAG ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *v, u64 va, u64 ps)
{
	struct thash_data *cur;
	u64 start, size, tag, num;
	union ia64_rr rr;

	start = va & ~((1UL << ps) - 1);
	rr.val = FUNC1(va);
	size = FUNC0(rr.ps);
	num = 1UL << ((ps < rr.ps) ? 0 : (ps - rr.ps));
	while (num) {
		cur = (struct thash_data *)FUNC2(start);
		tag = FUNC3(start);
		if (cur->etag == tag)
			cur->etag = INVALID_TI_TAG;
		start += size;
		num--;
	}
	FUNC4(va, ps);
}