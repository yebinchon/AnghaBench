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
struct velocity_info {int wol_opts; int /*<<< orphan*/  wol_passwd; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int /*<<< orphan*/  sopass; } ;

/* Variables and functions */
 int VELOCITY_WOL_ARP ; 
 int VELOCITY_WOL_UCAST ; 
 int WAKE_ARP ; 
 int WAKE_MAGIC ; 
 int WAKE_PHY ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct velocity_info* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct velocity_info *vptr = FUNC1(dev);
	wol->supported = WAKE_PHY | WAKE_MAGIC | WAKE_UCAST | WAKE_ARP;
	wol->wolopts |= WAKE_MAGIC;
	/*
	   if (vptr->wol_opts & VELOCITY_WOL_PHY)
		   wol.wolopts|=WAKE_PHY;
			 */
	if (vptr->wol_opts & VELOCITY_WOL_UCAST)
		wol->wolopts |= WAKE_UCAST;
	if (vptr->wol_opts & VELOCITY_WOL_ARP)
		wol->wolopts |= WAKE_ARP;
	FUNC0(&wol->sopass, vptr->wol_passwd, 6);
}