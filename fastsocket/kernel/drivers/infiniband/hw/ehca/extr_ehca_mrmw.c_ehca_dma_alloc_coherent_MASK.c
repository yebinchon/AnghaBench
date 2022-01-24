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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 void* FUNC5 (struct page*) ; 

__attribute__((used)) static void *FUNC6(struct ib_device *dev, size_t size,
				     u64 *dma_handle, gfp_t flag)
{
	struct page *p;
	void *addr = NULL;
	u64 dma_addr;

	p = FUNC0(flag, FUNC4(size));
	if (p) {
		addr = FUNC5(p);
		dma_addr = FUNC2(addr);
		if (FUNC1(dev, dma_addr)) {
			FUNC3((unsigned long)addr,	FUNC4(size));
			return NULL;
		}
		if (dma_handle)
			*dma_handle = dma_addr;
		return addr;
	}
	return NULL;
}