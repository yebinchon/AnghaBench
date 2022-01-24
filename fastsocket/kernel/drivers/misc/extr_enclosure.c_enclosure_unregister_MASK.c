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
struct enclosure_device {int components; int /*<<< orphan*/  edev; int /*<<< orphan*/ * cb; TYPE_1__* component; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int number; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  container_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enclosure_null_callbacks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct enclosure_device *edev)
{
	int i;

	FUNC2(&container_list_lock);
	FUNC1(&edev->node);
	FUNC3(&container_list_lock);

	for (i = 0; i < edev->components; i++)
		if (edev->component[i].number != -1)
			FUNC0(&edev->component[i].cdev);

	/* prevent any callbacks into service user */
	edev->cb = &enclosure_null_callbacks;
	FUNC0(&edev->edev);
}