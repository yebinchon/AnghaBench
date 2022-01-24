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
struct kvmppc_vcpu_44x {struct kvmppc_44x_shadow_ref* shadow_refs; } ;
struct kvmppc_44x_shadow_ref {int /*<<< orphan*/ * page; scalar_t__ writeable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct kvmppc_vcpu_44x *vcpu_44x,
                                      unsigned int stlb_index)
{
	struct kvmppc_44x_shadow_ref *ref = &vcpu_44x->shadow_refs[stlb_index];

	if (!ref->page)
		return;

	/* Discard from the TLB. */
	/* Note: we could actually invalidate a host mapping, if the host overwrote
	 * this TLB entry since we inserted a guest mapping. */
	FUNC2(stlb_index);

	/* Now release the page. */
	if (ref->writeable)
		FUNC1(ref->page);
	else
		FUNC0(ref->page);

	ref->page = NULL;

	/* XXX set tlb_44x_index to stlb_index? */

	FUNC3(stlb_index);
}