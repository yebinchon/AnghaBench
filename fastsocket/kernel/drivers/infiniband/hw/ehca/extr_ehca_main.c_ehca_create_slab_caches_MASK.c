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

/* Variables and functions */
 int /*<<< orphan*/  EHCA_PAGESIZE ; 
 int /*<<< orphan*/  H_CB_ALIGNMENT ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  ctblk_cache ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(void)
{
	int ret;

	ret = FUNC10();
	if (ret) {
		FUNC6("Cannot create PD SLAB cache.");
		return ret;
	}

	ret = FUNC8();
	if (ret) {
		FUNC6("Cannot create CQ SLAB cache.");
		goto create_slab_caches2;
	}

	ret = FUNC11();
	if (ret) {
		FUNC6("Cannot create QP SLAB cache.");
		goto create_slab_caches3;
	}

	ret = FUNC7();
	if (ret) {
		FUNC6("Cannot create AV SLAB cache.");
		goto create_slab_caches4;
	}

	ret = FUNC9();
	if (ret) {
		FUNC6("Cannot create MR&MW SLAB cache.");
		goto create_slab_caches5;
	}

	ret = FUNC12();
	if (ret) {
		FUNC6("Cannot create small queue SLAB cache.");
		goto create_slab_caches6;
	}

#ifdef CONFIG_PPC_64K_PAGES
	ctblk_cache = kmem_cache_create("ehca_cache_ctblk",
					EHCA_PAGESIZE, H_CB_ALIGNMENT,
					SLAB_HWCACHE_ALIGN,
					NULL);
	if (!ctblk_cache) {
		ehca_gen_err("Cannot create ctblk SLAB cache.");
		ehca_cleanup_small_qp_cache();
		goto create_slab_caches6;
	}
#endif
	return 0;

create_slab_caches6:
	FUNC2();

create_slab_caches5:
	FUNC0();

create_slab_caches4:
	FUNC4();

create_slab_caches3:
	FUNC1();

create_slab_caches2:
	FUNC3();

	return ret;
}