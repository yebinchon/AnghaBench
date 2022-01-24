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
typedef  int u8 ;
struct net_device {long base_addr; } ;

/* Variables and functions */
 int MII_CLK ; 
 int MII_READ ; 
 long PhyCtrl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int,long) ; 

__attribute__((used)) static int
FUNC3 (struct net_device *dev)
{
	long ioaddr = dev->base_addr + PhyCtrl;
	u8 data;

	data = (FUNC1 (ioaddr) & 0xf8) | MII_READ;
	FUNC2 (data, ioaddr);
	FUNC0 ();
	FUNC2 (data | MII_CLK, ioaddr);
	FUNC0 ();
	return ((FUNC1 (ioaddr) >> 1) & 1);
}