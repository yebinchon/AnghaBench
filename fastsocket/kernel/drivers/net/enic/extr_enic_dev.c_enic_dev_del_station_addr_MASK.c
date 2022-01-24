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
struct enic {int /*<<< orphan*/  devcmd_lock; TYPE_1__* netdev; int /*<<< orphan*/  vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct enic *enic)
{
	int err;

	if (!FUNC0(enic->netdev->dev_addr))
		return -EADDRNOTAVAIL;

	FUNC1(&enic->devcmd_lock);
	err = FUNC3(enic->vdev, enic->netdev->dev_addr);
	FUNC2(&enic->devcmd_lock);

	return err;
}