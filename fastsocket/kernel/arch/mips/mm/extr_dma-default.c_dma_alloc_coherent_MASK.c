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
 void* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,size_t,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,void*,size_t) ; 

void *FUNC9(struct device *dev, size_t size,
	dma_addr_t * dma_handle, gfp_t gfp)
{
	void *ret;

	if (FUNC2(dev, size, dma_handle, &ret))
		return ret;

	gfp = FUNC5(dev, gfp);

	ret = (void *) FUNC1(gfp, FUNC4(size));

	if (ret) {
		FUNC6(ret, 0, size);
		*dma_handle = FUNC8(dev, ret, size);

		if (!FUNC7(dev)) {
			FUNC3((unsigned long) ret, size);
			ret = FUNC0(ret);
		}
	}

	return ret;
}