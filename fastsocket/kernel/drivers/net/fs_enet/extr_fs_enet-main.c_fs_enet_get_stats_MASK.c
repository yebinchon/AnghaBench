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
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct fs_enet_private {struct net_device_stats stats; } ;

/* Variables and functions */
 struct fs_enet_private* FUNC0 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC1(struct net_device *dev)
{
	struct fs_enet_private *fep = FUNC0(dev);
	return &fep->stats;
}