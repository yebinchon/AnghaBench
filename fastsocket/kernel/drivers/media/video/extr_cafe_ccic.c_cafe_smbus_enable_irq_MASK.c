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
struct cafe_camera {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IRQMASK ; 
 int /*<<< orphan*/  TWSIIRQS ; 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct cafe_camera *cam)
{
	unsigned long flags;

	FUNC1(&cam->dev_lock, flags);
	FUNC0(cam, REG_IRQMASK, TWSIIRQS);
	FUNC2(&cam->dev_lock, flags);
}