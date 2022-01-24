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
struct enic {int /*<<< orphan*/  devcmd_lock; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
#define  VNIC_DEV_INTR_MODE_INTX 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int FUNC0 () ; 
 int FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct enic *enic)
{
	int err;

	FUNC2(&enic->devcmd_lock);
	switch (FUNC4(enic->vdev)) {
	case VNIC_DEV_INTR_MODE_INTX:
		err = FUNC5(enic->vdev,
			FUNC0());
		break;
	case VNIC_DEV_INTR_MODE_MSIX:
		err = FUNC5(enic->vdev,
			FUNC1(enic));
		break;
	default:
		err = FUNC5(enic->vdev, -1 /* no intr */);
		break;
	}
	FUNC3(&enic->devcmd_lock);

	return err;
}