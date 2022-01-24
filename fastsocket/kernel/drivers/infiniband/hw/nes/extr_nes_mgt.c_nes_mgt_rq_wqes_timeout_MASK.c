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
struct nes_vnic_mgt {int /*<<< orphan*/  rx_skbs_needed; int /*<<< orphan*/  rx_skb_timer_running; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_vnic_mgt*) ; 

__attribute__((used)) static void FUNC3(unsigned long parm)
{
	struct nes_vnic_mgt *mgtvnic = (struct nes_vnic_mgt *)parm;

	FUNC1(&mgtvnic->rx_skb_timer_running, 0);
	if (FUNC0(&mgtvnic->rx_skbs_needed))
		FUNC2(mgtvnic);
}