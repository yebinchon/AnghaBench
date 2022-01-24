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
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 void* FUNC2 (struct page*) ; 

__attribute__((used)) static void *FUNC3(struct ib_device *dev, size_t size,
				      u64 *dma_handle, gfp_t flag)
{
	struct page *p;
	void *addr = NULL;

	p = FUNC0(flag, FUNC1(size));
	if (p)
		addr = FUNC2(p);
	if (dma_handle)
		*dma_handle = (u64) addr;
	return addr;
}