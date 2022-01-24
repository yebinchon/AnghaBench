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
typedef  int u32 ;
struct smsc9420_pdata {int dummy; } ;
struct net_device_stats {int rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  MISS_FRAME_CNTR ; 
 struct smsc9420_pdata* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC0(dev);
	u32 counter = FUNC1(pd, MISS_FRAME_CNTR);
	dev->stats.rx_dropped +=
	    (counter & 0x0000FFFF) + ((counter >> 17) & 0x000003FF);
	return &dev->stats;
}