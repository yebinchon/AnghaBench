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
struct dma_info {scalar_t__ d64txregbase; scalar_t__ d64rxregbase; int /*<<< orphan*/  name; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control ; 

__attribute__((used)) static bool FUNC4(struct dma_info *di)
{
	/* DMA64 supports full 32- or 64-bit operation. AE is always valid */

	/* not all tx or rx channel are available */
	if (di->d64txregbase != 0) {
		if (!FUNC2(di, FUNC1(di, control)))
			FUNC3(di->core,
				      "%s: DMA64 tx doesn't have AE set\n",
				      di->name);
		return true;
	} else if (di->d64rxregbase != 0) {
		if (!FUNC2(di, FUNC0(di, control)))
			FUNC3(di->core,
				      "%s: DMA64 rx doesn't have AE set\n",
				      di->name);
		return true;
	}

	return false;
}