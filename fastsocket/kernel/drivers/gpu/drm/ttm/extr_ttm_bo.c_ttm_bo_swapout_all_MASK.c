#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ttm_bo_device {TYPE_1__* glob; } ;
struct TYPE_2__ {int /*<<< orphan*/  shrink; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct ttm_bo_device *bdev)
{
	while (FUNC0(&bdev->glob->shrink) == 0)
		;
}