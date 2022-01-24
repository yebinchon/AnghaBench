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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct device*,size_t,int /*<<< orphan*/ *,void**) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgprot_kernel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,void*) ; 

void *
FUNC6(struct device *dev, size_t size, dma_addr_t *handle, gfp_t gfp)
{
	void *memory;

	if (FUNC2(dev, size, handle, &memory))
		return memory;

	if (FUNC1()) {
		void *virt;

		virt = FUNC3(size, gfp);
		if (!virt)
			return NULL;
		*handle =  FUNC5(dev, virt);

		return virt;
	}

	return FUNC0(dev, size, handle, gfp,
			   FUNC4(pgprot_kernel));
}