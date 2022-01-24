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
 int ENOSYS ; 
 scalar_t__ INFO_EXT ; 
 scalar_t__ INFO_SIMPLE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ SUBC_STIB4 ; 
 scalar_t__ SUBC_STIB6 ; 
 scalar_t__ SUBC_STIB7 ; 
 scalar_t__ FUNC2 (unsigned long,int,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (scalar_t__,int*) ; 
 scalar_t__ diag204_info_type ; 
 scalar_t__ diag204_store_sc ; 

__attribute__((used)) static int FUNC5(void)
{
	void *buf;
	int pages, rc;

	buf = FUNC4(INFO_EXT, &pages);
	if (!FUNC0(buf)) {
		if (FUNC2((unsigned long)SUBC_STIB7 |
			    (unsigned long)INFO_EXT, pages, buf) >= 0) {
			diag204_store_sc = SUBC_STIB7;
			diag204_info_type = INFO_EXT;
			goto out;
		}
		if (FUNC2((unsigned long)SUBC_STIB6 |
			    (unsigned long)INFO_EXT, pages, buf) >= 0) {
			diag204_store_sc = SUBC_STIB6;
			diag204_info_type = INFO_EXT;
			goto out;
		}
		FUNC3();
	}

	/* subcodes 6 and 7 failed, now try subcode 4 */

	buf = FUNC4(INFO_SIMPLE, &pages);
	if (FUNC0(buf)) {
		rc = FUNC1(buf);
		goto fail_alloc;
	}
	if (FUNC2((unsigned long)SUBC_STIB4 |
		    (unsigned long)INFO_SIMPLE, pages, buf) >= 0) {
		diag204_store_sc = SUBC_STIB4;
		diag204_info_type = INFO_SIMPLE;
		goto out;
	} else {
		rc = -ENOSYS;
		goto fail_store;
	}
out:
	rc = 0;
fail_store:
	FUNC3();
fail_alloc:
	return rc;
}