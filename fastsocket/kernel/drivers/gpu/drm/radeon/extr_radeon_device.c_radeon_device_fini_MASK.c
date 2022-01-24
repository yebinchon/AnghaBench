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
struct radeon_device {int shutdown; int /*<<< orphan*/ * rmmio; int /*<<< orphan*/ * rio_mem; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct radeon_device *rdev)
{
	FUNC0("radeon: finishing device.\n");
	rdev->shutdown = true;
	/* evict vram memory */
	FUNC3(rdev);
	FUNC5(rdev);
	FUNC7(rdev->pdev);
	FUNC6(rdev->pdev, NULL, NULL, NULL);
	if (rdev->rio_mem)
		FUNC2(rdev->pdev, rdev->rio_mem);
	rdev->rio_mem = NULL;
	FUNC1(rdev->rmmio);
	rdev->rmmio = NULL;
	FUNC4(rdev);
}