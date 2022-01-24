#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct of_device {TYPE_1__ dev; int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC5(struct of_device *ofdev)
{
	FUNC0(ofdev->node == NULL);

	FUNC2(&ofdev->dev);

	/* device_add will assume that this device is on the same node as
	 * the parent. If there is no parent defined, set the node
	 * explicitly */
	if (!ofdev->dev.parent)
		FUNC4(&ofdev->dev, FUNC3(ofdev->node));

	return FUNC1(&ofdev->dev);
}