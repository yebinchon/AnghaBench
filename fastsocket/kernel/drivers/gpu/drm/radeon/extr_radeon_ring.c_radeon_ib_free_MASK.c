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
struct radeon_ib {int /*<<< orphan*/  fence; int /*<<< orphan*/  sa_bo; int /*<<< orphan*/  semaphore; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev, struct radeon_ib *ib)
{
	FUNC2(rdev, &ib->semaphore, ib->fence);
	FUNC1(rdev, &ib->sa_bo, ib->fence);
	FUNC0(&ib->fence);
}