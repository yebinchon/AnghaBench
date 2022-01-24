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
 scalar_t__ DDP_PGIDX_MAX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ page_idx ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (page_idx == DDP_PGIDX_MAX) {
		page_idx = FUNC1(PAGE_SIZE);

		if (page_idx == DDP_PGIDX_MAX) {
			FUNC2("system PAGE %lu, update hw.\n", PAGE_SIZE);
			if (FUNC0() < 0) {
				FUNC2("PAGE %lu, disable ddp.\n", PAGE_SIZE);
				return;
			}
			page_idx = FUNC1(PAGE_SIZE);
		}
		FUNC2("system PAGE %lu, ddp idx %u.\n", PAGE_SIZE, page_idx);
	}
}