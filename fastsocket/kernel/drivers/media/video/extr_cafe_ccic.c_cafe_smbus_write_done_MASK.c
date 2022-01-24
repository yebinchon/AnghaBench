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
 int /*<<< orphan*/  REG_TWSIC1 ; 
 int TWSIC1_ERROR ; 
 int TWSIC1_WSTAT ; 
 int FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cafe_camera *cam)
{
	unsigned long flags;
	int c1;

	/*
	 * We must delay after the interrupt, or the controller gets confused
	 * and never does give us good status.  Fortunately, we don't do this
	 * often.
	 */
	FUNC3(20);
	FUNC1(&cam->dev_lock, flags);
	c1 = FUNC0(cam, REG_TWSIC1);
	FUNC2(&cam->dev_lock, flags);
	return (c1 & (TWSIC1_WSTAT|TWSIC1_ERROR)) != TWSIC1_WSTAT;
}