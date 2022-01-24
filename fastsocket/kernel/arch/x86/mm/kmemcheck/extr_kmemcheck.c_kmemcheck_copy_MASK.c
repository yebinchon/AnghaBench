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
typedef  int uint8_t ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  shadow ;
typedef  enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KMEMCHECK_SHADOW_INITIALIZED ; 
 unsigned long PAGE_MASK ; 
 int kmemcheck_enabled ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long,unsigned int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int* FUNC3 (unsigned long) ; 
 int FUNC4 (int*,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs,
	unsigned long src_addr, unsigned long dst_addr, unsigned int size)
{
	uint8_t shadow[8];
	enum kmemcheck_shadow status;

	unsigned long page;
	unsigned long next_addr;
	unsigned long next_page;

	uint8_t *x;
	unsigned int i;
	unsigned int n;

	FUNC0(size > sizeof(shadow));

	page = src_addr & PAGE_MASK;
	next_addr = src_addr + size - 1;
	next_page = next_addr & PAGE_MASK;

	if (FUNC5(page == next_page)) {
		/* Same page */
		x = FUNC3(src_addr);
		if (x) {
			FUNC2(src_addr);
			for (i = 0; i < size; ++i)
				shadow[i] = x[i];
		} else {
			for (i = 0; i < size; ++i)
				shadow[i] = KMEMCHECK_SHADOW_INITIALIZED;
		}
	} else {
		n = next_page - src_addr;
		FUNC0(n > sizeof(shadow));

		/* First page */
		x = FUNC3(src_addr);
		if (x) {
			FUNC2(src_addr);
			for (i = 0; i < n; ++i)
				shadow[i] = x[i];
		} else {
			/* Not tracked */
			for (i = 0; i < n; ++i)
				shadow[i] = KMEMCHECK_SHADOW_INITIALIZED;
		}

		/* Second page */
		x = FUNC3(next_page);
		if (x) {
			FUNC2(next_page);
			for (i = n; i < size; ++i)
				shadow[i] = x[i - n];
		} else {
			/* Not tracked */
			for (i = n; i < size; ++i)
				shadow[i] = KMEMCHECK_SHADOW_INITIALIZED;
		}
	}

	page = dst_addr & PAGE_MASK;
	next_addr = dst_addr + size - 1;
	next_page = next_addr & PAGE_MASK;

	if (FUNC5(page == next_page)) {
		/* Same page */
		x = FUNC3(dst_addr);
		if (x) {
			FUNC2(dst_addr);
			for (i = 0; i < size; ++i) {
				x[i] = shadow[i];
				shadow[i] = KMEMCHECK_SHADOW_INITIALIZED;
			}
		}
	} else {
		n = next_page - dst_addr;
		FUNC0(n > sizeof(shadow));

		/* First page */
		x = FUNC3(dst_addr);
		if (x) {
			FUNC2(dst_addr);
			for (i = 0; i < n; ++i) {
				x[i] = shadow[i];
				shadow[i] = KMEMCHECK_SHADOW_INITIALIZED;
			}
		}

		/* Second page */
		x = FUNC3(next_page);
		if (x) {
			FUNC2(next_page);
			for (i = n; i < size; ++i) {
				x[i - n] = shadow[i];
				shadow[i] = KMEMCHECK_SHADOW_INITIALIZED;
			}
		}
	}

	status = FUNC4(shadow, size);
	if (status == KMEMCHECK_SHADOW_INITIALIZED)
		return;

	if (kmemcheck_enabled)
		FUNC1(status, src_addr, size, regs);

	if (kmemcheck_enabled == 2)
		kmemcheck_enabled = 0;
}