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
struct uncached_pool {int nchunks_added; int /*<<< orphan*/  add_chunk_mutex; int /*<<< orphan*/  pool; int /*<<< orphan*/  status; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int GFP_KERNEL ; 
 int GFP_THISNODE ; 
 scalar_t__ IA64_GRANULE_SHIFT ; 
 int IA64_GRANULE_SIZE ; 
 int MAX_CONVERTED_CHUNKS_PER_NODE ; 
 unsigned long PAGE_OFFSET ; 
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PAL_STATUS_SUCCESS ; 
 int PAL_VISIBILITY_OK ; 
 int PAL_VISIBILITY_OK_REMOTE_NEEDED ; 
 int /*<<< orphan*/  PAL_VISIBILITY_PHYSICAL ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int __GFP_ZERO ; 
 unsigned long __IA64_UNCACHED_OFFSET ; 
 struct page* FUNC2 (int,int,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned long,int,int) ; 
 int FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ ,struct uncached_pool*,int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long,int) ; 
 int /*<<< orphan*/  uncached_ipi_mc_drain ; 
 int /*<<< orphan*/  uncached_ipi_visibility ; 

__attribute__((used)) static int FUNC20(struct uncached_pool *uc_pool, int nid)
{
	struct page *page;
	int status, i, nchunks_added = uc_pool->nchunks_added;
	unsigned long c_addr, uc_addr;

	if (FUNC13(&uc_pool->add_chunk_mutex) != 0)
		return -1;	/* interrupted by a signal */

	if (uc_pool->nchunks_added > nchunks_added) {
		/* someone added a new chunk while we were waiting */
		FUNC14(&uc_pool->add_chunk_mutex);
		return 0;
	}

	if (uc_pool->nchunks_added >= MAX_CONVERTED_CHUNKS_PER_NODE) {
		FUNC14(&uc_pool->add_chunk_mutex);
		return -1;
	}

	/* attempt to allocate a granule's worth of cached memory pages */

	page = FUNC2(nid,
				GFP_KERNEL | __GFP_ZERO | GFP_THISNODE,
				IA64_GRANULE_SHIFT-PAGE_SHIFT);
	if (!page) {
		FUNC14(&uc_pool->add_chunk_mutex);
		return -1;
	}

	/* convert the memory pages from cached to uncached */

	c_addr = (unsigned long)FUNC15(page);
	uc_addr = c_addr - PAGE_OFFSET + __IA64_UNCACHED_OFFSET;

	/*
	 * There's a small race here where it's possible for someone to
	 * access the page through /dev/mem halfway through the conversion
	 * to uncached - not sure it's really worth bothering about
	 */
	for (i = 0; i < (IA64_GRANULE_SIZE / PAGE_SIZE); i++)
		FUNC1(&page[i]);

	FUNC6(uc_addr, uc_addr + IA64_GRANULE_SIZE);

	status = FUNC10(PAL_VISIBILITY_PHYSICAL);
	if (status == PAL_VISIBILITY_OK_REMOTE_NEEDED) {
		FUNC4(&uc_pool->status, 0);
		status = FUNC18(uncached_ipi_visibility, uc_pool, 1);
		if (status || FUNC3(&uc_pool->status))
			goto failed;
	} else if (status != PAL_VISIBILITY_OK)
		goto failed;

	FUNC16();

	if (FUNC11("sn2"))
		FUNC19(uc_addr, IA64_GRANULE_SIZE);
	else
		FUNC5(uc_addr, uc_addr + IA64_GRANULE_SIZE);

	/* flush the just introduced uncached translation from the TLB */
	FUNC12();

	FUNC17();

	status = FUNC9();
	if (status != PAL_STATUS_SUCCESS)
		goto failed;
	FUNC4(&uc_pool->status, 0);
	status = FUNC18(uncached_ipi_mc_drain, uc_pool, 1);
	if (status || FUNC3(&uc_pool->status))
		goto failed;

	/*
	 * The chunk of memory pages has been converted to uncached so now we
	 * can add it to the pool.
	 */
	status = FUNC8(uc_pool->pool, uc_addr, IA64_GRANULE_SIZE, nid);
	if (status)
		goto failed;

	uc_pool->nchunks_added++;
	FUNC14(&uc_pool->add_chunk_mutex);
	return 0;

	/* failed to convert or add the chunk so give it back to the kernel */
failed:
	for (i = 0; i < (IA64_GRANULE_SIZE / PAGE_SIZE); i++)
		FUNC0(&page[i]);

	FUNC7(c_addr, IA64_GRANULE_SHIFT-PAGE_SHIFT);
	FUNC14(&uc_pool->add_chunk_mutex);
	return -1;
}