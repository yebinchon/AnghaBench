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
typedef  int /*<<< orphan*/  uint64_t ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
#define  RADEON_BENCHMARK_COPY_BLIT 129 
#define  RADEON_BENCHMARK_COPY_DMA 128 
 unsigned int RADEON_GPU_PAGE_SIZE ; 
 unsigned long jiffies ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct radeon_fence**) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct radeon_fence**) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_fence**) ; 
 int FUNC5 (struct radeon_fence*,int) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev, unsigned size,
				    uint64_t saddr, uint64_t daddr,
				    int flag, int n)
{
	unsigned long start_jiffies;
	unsigned long end_jiffies;
	struct radeon_fence *fence = NULL;
	int i, r;

	start_jiffies = jiffies;
	for (i = 0; i < n; i++) {
		switch (flag) {
		case RADEON_BENCHMARK_COPY_DMA:
			r = FUNC3(rdev, saddr, daddr,
					    size / RADEON_GPU_PAGE_SIZE,
					    &fence);
			break;
		case RADEON_BENCHMARK_COPY_BLIT:
			r = FUNC2(rdev, saddr, daddr,
					     size / RADEON_GPU_PAGE_SIZE,
					     &fence);
			break;
		default:
			FUNC0("Unknown copy method\n");
			r = -EINVAL;
		}
		if (r)
			goto exit_do_move;
		r = FUNC5(fence, false);
		if (r)
			goto exit_do_move;
		FUNC4(&fence);
	}
	end_jiffies = jiffies;
	r = FUNC1(end_jiffies - start_jiffies);

exit_do_move:
	if (fence)
		FUNC4(&fence);
	return r;
}