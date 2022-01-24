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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  tlanRev; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_DEF_REVISION ; 
 int /*<<< orphan*/  TLAN_IGNORE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLan_HandleInterrupt ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC10( struct net_device *dev )
{
	TLanPrivateInfo	*priv = FUNC6(dev);
	int		err;

	priv->tlanRev = FUNC1( dev->base_addr, TLAN_DEF_REVISION );
	err = FUNC9( dev->irq, TLan_HandleInterrupt, IRQF_SHARED,
			   dev->name, dev );

	if ( err ) {
		FUNC8("TLAN:  Cannot open %s because IRQ %d is already in use.\n",
		       dev->name, dev->irq );
		return err;
	}

	FUNC5(&priv->timer);
	FUNC7(dev);

	/* NOTE: It might not be necessary to read the stats before a
			 reset if you don't care what the values are.
	*/
	FUNC4( dev );
	FUNC2( dev, TLAN_IGNORE );
	FUNC3( dev );

	FUNC0( TLAN_DEBUG_GNRL, "%s: Opened.  TLAN Chip Rev: %x\n",
		  dev->name, priv->tlanRev );

	return 0;

}