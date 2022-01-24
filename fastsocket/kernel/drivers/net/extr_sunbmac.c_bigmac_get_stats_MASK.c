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
struct bigmac {struct net_device_stats enet_stats; int /*<<< orphan*/  bregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bigmac*,int /*<<< orphan*/ ) ; 
 struct bigmac* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	struct bigmac *bp = FUNC1(dev);

	FUNC0(bp, bp->bregs);
	return &bp->enet_stats;
}