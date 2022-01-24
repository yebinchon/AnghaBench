#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; scalar_t__ base_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * function; } ;
struct TYPE_4__ {TYPE_3__ timer; scalar_t__ neg_be_verbose; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_HC_AD_RST ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int /*<<< orphan*/  TLAN_RECORD ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	TLanPrivateInfo *priv = FUNC5(dev);

	FUNC6(dev);
	priv->neg_be_verbose = 0;

	FUNC2( dev, TLAN_RECORD );
	FUNC7( TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD );
	if ( priv->timer.function != NULL ) {
		FUNC3( &priv->timer );
		priv->timer.function = NULL;
	}

	FUNC4( dev->irq, dev );
	FUNC1( dev );
	FUNC0( TLAN_DEBUG_GNRL, "Device %s closed.\n", dev->name );

	return 0;

}