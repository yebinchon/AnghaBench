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
struct TYPE_2__ {int /*<<< orphan*/  iwcm; } ;
struct nes_ib_device {TYPE_1__ ibdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_ib_device*) ; 

void FUNC3(struct nes_ib_device *nesibdev)
{
	if (nesibdev == NULL)
		return;

	FUNC2(nesibdev);

	FUNC1(nesibdev->ibdev.iwcm);
	FUNC0(&nesibdev->ibdev);
}