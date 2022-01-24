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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct skge_port {int port; scalar_t__ flow_status; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct net_device {int mc_count; int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
typedef  int /*<<< orphan*/  filter ;

/* Variables and functions */
 scalar_t__ FLOW_STAT_REM_SEND ; 
 scalar_t__ FLOW_STAT_SYMMETRIC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  XM_HSM ; 
 int /*<<< orphan*/  XM_MD_ENA_HASH ; 
 int /*<<< orphan*/  XM_MD_ENA_PROM ; 
 int /*<<< orphan*/  XM_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 struct skge_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  pause_mc_addr ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct skge_port *skge = FUNC2(dev);
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	int i, count = dev->mc_count;
	struct dev_mc_list *list = dev->mc_list;
	u32 mode;
	u8 filter[8];

	mode = FUNC4(hw, port, XM_MODE);
	mode |= XM_MD_ENA_HASH;
	if (dev->flags & IFF_PROMISC)
		mode |= XM_MD_ENA_PROM;
	else
		mode &= ~XM_MD_ENA_PROM;

	if (dev->flags & IFF_ALLMULTI)
		FUNC1(filter, 0xff, sizeof(filter));
	else {
		FUNC1(filter, 0, sizeof(filter));

		if (skge->flow_status == FLOW_STAT_REM_SEND
		    || skge->flow_status == FLOW_STAT_SYMMETRIC)
			FUNC0(filter, pause_mc_addr);

		for (i = 0; list && i < count; i++, list = list->next)
			FUNC0(filter, list->dmi_addr);
	}

	FUNC5(hw, port, XM_MODE, mode);
	FUNC3(hw, port, XM_HSM, filter);
}