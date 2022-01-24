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
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(struct pci_dev *dev, size_t size,
				 dma_addr_t *handle)
{
	void *ret;
	
	ret = (void *)FUNC0(GFP_ATOMIC, FUNC1(size));

	if (ret != NULL) {
		FUNC2(ret, 0, size);
		*handle = FUNC3(ret);
	}
	return ret;
}