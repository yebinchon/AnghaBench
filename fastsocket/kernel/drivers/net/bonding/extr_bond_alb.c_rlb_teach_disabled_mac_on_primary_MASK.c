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
struct TYPE_3__ {int primary_is_promisc; scalar_t__ rlb_promisc_timeout_counter; } ;
struct bonding {TYPE_2__* curr_active_slave; TYPE_1__ alb_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bonding *bond, u8 addr[])
{
	if (!bond->curr_active_slave) {
		return;
	}

	if (!bond->alb_info.primary_is_promisc) {
		if (!FUNC1(bond->curr_active_slave->dev, 1))
			bond->alb_info.primary_is_promisc = 1;
		else
			bond->alb_info.primary_is_promisc = 0;
	}

	bond->alb_info.rlb_promisc_timeout_counter = 0;

	FUNC0(bond->curr_active_slave, addr);
}