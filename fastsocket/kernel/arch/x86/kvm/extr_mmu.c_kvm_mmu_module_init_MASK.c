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
struct kvm_rmap_desc {int dummy; } ;
struct kvm_pte_chain {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_total_used_mmu_pages ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* mmu_page_header_cache ; 
 int /*<<< orphan*/  mmu_shrinker ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* pte_chain_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* rmap_desc_cache ; 

int FUNC4(void)
{
	pte_chain_cache = FUNC0("kvm_pte_chain",
					    sizeof(struct kvm_pte_chain),
					    0, 0, NULL);
	if (!pte_chain_cache)
		goto nomem;
	rmap_desc_cache = FUNC0("kvm_rmap_desc",
					    sizeof(struct kvm_rmap_desc),
					    0, 0, NULL);
	if (!rmap_desc_cache)
		goto nomem;

	mmu_page_header_cache = FUNC0("kvm_mmu_page_header",
						  sizeof(struct kvm_mmu_page),
						  0, 0, NULL);
	if (!mmu_page_header_cache)
		goto nomem;

	if (FUNC2(&kvm_total_used_mmu_pages, 0))
		goto nomem;

	FUNC3(&mmu_shrinker);

	return 0;

nomem:
	FUNC1();
	return -ENOMEM;
}