#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {size_t phyNum; int /*<<< orphan*/ * phy; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MII_GC_LOOPBK ; 
 int /*<<< orphan*/  MII_GEN_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_TIMER_PHY_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5( struct net_device *dev )
{
	TLanPrivateInfo	*priv = FUNC4(dev);
	u16		value;

	FUNC0( TLAN_DEBUG_GNRL, "%s: Powering up PHY.\n", dev->name );
	FUNC1( dev->base_addr );
	value = MII_GC_LOOPBK;
	FUNC2( dev, priv->phy[priv->phyNum], MII_GEN_CTL, value );
	FUNC1(dev->base_addr);
	/* Wait for 500 ms and reset the
	 * transceiver.  The TLAN docs say both 50 ms and
	 * 500 ms, so do the longer, just in case.
	 */
	FUNC3( dev, (HZ/20), TLAN_TIMER_PHY_RESET );

}