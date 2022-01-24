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
typedef  size_t u64 ;
struct ehea_mr {int /*<<< orphan*/  handle; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 size_t EHEA_MAX_RPAGE ; 
 long EHEA_PAGESIZE ; 
 size_t EHEA_PAGES_PER_SECTION ; 
 int /*<<< orphan*/  FORCE_FREE ; 
 size_t H_PAGE_REGISTERED ; 
 size_t H_SUCCESS ; 
 void* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC4 (void*) ; 

__attribute__((used)) static u64 FUNC5(int top, int dir, int idx, u64 *pt,
			       struct ehea_adapter *adapter,
			       struct ehea_mr *mr)
{
	void *pg;
	u64 j, m, hret;
	unsigned long k = 0;
	u64 pt_abs = FUNC4(pt);

	void *sectbase = FUNC0(top, dir, idx);

	for (j = 0; j < (EHEA_PAGES_PER_SECTION / EHEA_MAX_RPAGE); j++) {

		for (m = 0; m < EHEA_MAX_RPAGE; m++) {
			pg = sectbase + ((k++) * EHEA_PAGESIZE);
			pt[m] = FUNC4(pg);
		}
		hret = FUNC3(adapter->handle, mr->handle, 0,
						0, pt_abs, EHEA_MAX_RPAGE);

		if ((hret != H_SUCCESS)
		    && (hret != H_PAGE_REGISTERED)) {
			FUNC2(adapter->handle, mr->handle,
					     FORCE_FREE);
			FUNC1("register_rpage_mr failed");
			return hret;
		}
	}
	return hret;
}