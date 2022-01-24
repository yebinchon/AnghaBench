#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct radeon_device {TYPE_2__* asic; } ;
struct radeon_bo {int dummy; } ;
struct TYPE_3__ {scalar_t__ blit; scalar_t__ dma; } ;
struct TYPE_4__ {TYPE_1__ copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_BENCHMARK_COPY_BLIT ; 
 int /*<<< orphan*/  RADEON_BENCHMARK_COPY_DMA ; 
 int RADEON_BENCHMARK_ITERATIONS ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct radeon_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,int,unsigned int,unsigned int,char*) ; 
 int FUNC4 (struct radeon_device*,unsigned int,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ *,struct radeon_bo**) ; 
 int FUNC5 (struct radeon_bo*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_bo**) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_bo*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct radeon_device *rdev, unsigned size,
				  unsigned sdomain, unsigned ddomain)
{
	struct radeon_bo *dobj = NULL;
	struct radeon_bo *sobj = NULL;
	uint64_t saddr, daddr;
	int r, n;
	int time;

	n = RADEON_BENCHMARK_ITERATIONS;
	r = FUNC4(rdev, size, PAGE_SIZE, true, sdomain, NULL, &sobj);
	if (r) {
		goto out_cleanup;
	}
	r = FUNC6(sobj, false);
	if (FUNC10(r != 0))
		goto out_cleanup;
	r = FUNC5(sobj, sdomain, &saddr);
	FUNC9(sobj);
	if (r) {
		goto out_cleanup;
	}
	r = FUNC4(rdev, size, PAGE_SIZE, true, ddomain, NULL, &dobj);
	if (r) {
		goto out_cleanup;
	}
	r = FUNC6(dobj, false);
	if (FUNC10(r != 0))
		goto out_cleanup;
	r = FUNC5(dobj, ddomain, &daddr);
	FUNC9(dobj);
	if (r) {
		goto out_cleanup;
	}

	if (rdev->asic->copy.dma) {
		time = FUNC2(rdev, size, saddr, daddr,
						RADEON_BENCHMARK_COPY_DMA, n);
		if (time < 0)
			goto out_cleanup;
		if (time > 0)
			FUNC3(n, size, time,
						     sdomain, ddomain, "dma");
	}

	if (rdev->asic->copy.blit) {
		time = FUNC2(rdev, size, saddr, daddr,
						RADEON_BENCHMARK_COPY_BLIT, n);
		if (time < 0)
			goto out_cleanup;
		if (time > 0)
			FUNC3(n, size, time,
						     sdomain, ddomain, "blit");
	}

out_cleanup:
	if (sobj) {
		r = FUNC6(sobj, false);
		if (FUNC1(r == 0)) {
			FUNC7(sobj);
			FUNC9(sobj);
		}
		FUNC8(&sobj);
	}
	if (dobj) {
		r = FUNC6(dobj, false);
		if (FUNC1(r == 0)) {
			FUNC7(dobj);
			FUNC9(dobj);
		}
		FUNC8(&dobj);
	}

	if (r) {
		FUNC0("Error while benchmarking BO move.\n");
	}
}