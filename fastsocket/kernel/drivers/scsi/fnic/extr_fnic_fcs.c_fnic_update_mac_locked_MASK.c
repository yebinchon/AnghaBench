#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * ctl_src_addr; } ;
struct fnic {int /*<<< orphan*/  vdev; TYPE_2__* lport; int /*<<< orphan*/ * data_src_addr; TYPE_1__ ctlr; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct fnic *fnic, u8 *new)
{
	u8 *ctl = fnic->ctlr.ctl_src_addr;
	u8 *data = fnic->data_src_addr;

	if (FUNC2(new))
		new = ctl;
	if (!FUNC1(data, new))
		return;
	FUNC0(KERN_DEBUG, fnic->lport->host, "update_mac %pM\n", new);
	if (!FUNC2(data) && FUNC1(data, ctl))
		FUNC5(fnic->vdev, data);
	FUNC3(data, new, ETH_ALEN);
	if (FUNC1(new, ctl))
		FUNC4(fnic->vdev, new);
}