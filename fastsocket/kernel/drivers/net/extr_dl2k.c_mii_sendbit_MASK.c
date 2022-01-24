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
struct net_device {long base_addr; } ;

/* Variables and functions */
 int MII_CLK ; 
 int MII_DATA1 ; 
 int MII_WRITE ; 
 long PhyCtrl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int,long) ; 

__attribute__((used)) static void
FUNC3 (struct net_device *dev, u32 data)
{
	long ioaddr = dev->base_addr + PhyCtrl;
	data = (data) ? MII_DATA1 : 0;
	data |= MII_WRITE;
	data |= (FUNC1 (ioaddr) & 0xf8) | MII_WRITE;
	FUNC2 (data, ioaddr);
	FUNC0 ();
	FUNC2 (data | MII_CLK, ioaddr);
	FUNC0 ();
}