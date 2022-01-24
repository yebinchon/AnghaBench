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
struct cafe_camera {scalar_t__ n_sbufs; int /*<<< orphan*/  vdev; int /*<<< orphan*/  regs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cafe_camera *cam)
{
/* FIXME: Make sure we take care of everything here */
	if (cam->n_sbufs > 0)
		/* What if they are still mapped?  Shouldn't be, but... */
		FUNC3(cam);
	FUNC1(cam);
	FUNC0(cam);
	FUNC4(cam);
	FUNC2(cam);
	FUNC5(cam->pdev->irq, cam);
	FUNC6(cam->pdev, cam->regs);
	FUNC7(&cam->vdev);
}