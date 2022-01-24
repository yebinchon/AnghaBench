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
struct enic {int /*<<< orphan*/  notify_timer; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
#define  VNIC_DEV_INTR_MODE_MSI 128 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct enic *enic)
{
	switch (FUNC1(enic->vdev)) {
	case VNIC_DEV_INTR_MODE_MSI:
		FUNC0(&enic->notify_timer, jiffies);
		break;
	default:
		/* Using intr for notification for INTx/MSI-X */
		break;
	}
}