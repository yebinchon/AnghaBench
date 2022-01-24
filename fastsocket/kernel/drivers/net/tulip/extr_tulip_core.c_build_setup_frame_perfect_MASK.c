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
typedef  void* u16 ;
struct tulip_private {void** setup_frame; } ;
struct net_device {int mc_count; scalar_t__ dev_addr; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {scalar_t__ dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int,int) ; 
 struct tulip_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(u16 *setup_frm, struct net_device *dev)
{
	struct tulip_private *tp = FUNC1(dev);
	struct dev_mc_list *mclist;
	int i;
	u16 *eaddrs;

	/* We have <= 14 addresses so we can use the wonderful
	   16 address perfect filtering of the Tulip. */
	for (i = 0, mclist = dev->mc_list; i < dev->mc_count;
	     i++, mclist = mclist->next) {
		eaddrs = (u16 *)mclist->dmi_addr;
		*setup_frm++ = *eaddrs; *setup_frm++ = *eaddrs++;
		*setup_frm++ = *eaddrs; *setup_frm++ = *eaddrs++;
		*setup_frm++ = *eaddrs; *setup_frm++ = *eaddrs++;
	}
	/* Fill the unused entries with the broadcast address. */
	FUNC0(setup_frm, 0xff, (15-i)*12);
	setup_frm = &tp->setup_frame[15*6];

	/* Fill the final entry with our physical address. */
	eaddrs = (u16 *)dev->dev_addr;
	*setup_frm++ = eaddrs[0]; *setup_frm++ = eaddrs[0];
	*setup_frm++ = eaddrs[1]; *setup_frm++ = eaddrs[1];
	*setup_frm++ = eaddrs[2]; *setup_frm++ = eaddrs[2];
}