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
union ia64_rr {int ps; int /*<<< orphan*/  val; } ;
typedef  unsigned long u64 ;
struct thash_data {unsigned long page_flags; int itir; unsigned long gpaddr; int /*<<< orphan*/  etag; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_TI_TAG ; 
 unsigned long PAGE_FLAGS_RV_MASK ; 
 unsigned long _PAGE_PPN_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(u64 pte, u64 itir, u64 ifa, u64 gpte)
{
	union ia64_rr rr;
	struct thash_data *head;
	unsigned long ps, gpaddr;

	ps = FUNC4(itir);
	rr.val = FUNC0(ifa);

	 gpaddr = ((gpte & _PAGE_PPN_MASK) >> ps << ps) |
					(ifa & ((1UL << ps) - 1));

	head = (struct thash_data *)FUNC2(ifa);
	head->etag = INVALID_TI_TAG;
	FUNC1();
	head->page_flags = pte & ~PAGE_FLAGS_RV_MASK;
	head->itir = rr.ps << 2;
	head->etag = FUNC3(ifa);
	head->gpaddr = gpaddr;
}