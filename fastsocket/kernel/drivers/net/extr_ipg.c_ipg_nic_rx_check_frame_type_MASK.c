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
struct net_device {int dummy; } ;
struct ipg_rx {int /*<<< orphan*/  rfs; } ;
struct ipg_nic_private {int rx_current; struct ipg_rx* rxd; } ;

/* Variables and functions */
 int FRAME_NO_START_NO_END ; 
 scalar_t__ FRAME_WITH_END ; 
 scalar_t__ FRAME_WITH_START ; 
 int IPG_RFDLIST_LENGTH ; 
 int IPG_RFS_FRAMEEND ; 
 int IPG_RFS_FRAMESTART ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ipg_nic_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	struct ipg_nic_private *sp = FUNC1(dev);
	struct ipg_rx *rxfd = sp->rxd + (sp->rx_current % IPG_RFDLIST_LENGTH);
	int type = FRAME_NO_START_NO_END;

	if (FUNC0(rxfd->rfs) & IPG_RFS_FRAMESTART)
		type += FRAME_WITH_START;
	if (FUNC0(rxfd->rfs) & IPG_RFS_FRAMEEND)
		type += FRAME_WITH_END;
	return type;
}