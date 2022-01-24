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
struct w9966_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  W9966_STATE_CLAIMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct w9966_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct w9966_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct w9966_dev* cam)
{
	if (FUNC1(cam, W9966_STATE_CLAIMED, 0))
		return;
	FUNC0(cam->pdev);
	FUNC2(cam, W9966_STATE_CLAIMED, 0);
}