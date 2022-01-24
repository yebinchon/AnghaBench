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
typedef  int u16 ;
struct net_device {int base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int TLAN_DIO_ADR ; 
 int TLAN_DIO_DATA ; 
 int TLAN_NET_SIO ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MCLK ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MINTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10( struct net_device *dev, u16 phy, u16 reg, u16 val )
{
	u16	sio;
	int	minten;
	unsigned long flags = 0;
	TLanPrivateInfo *priv = FUNC6(dev);

	FUNC7(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
	sio = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;

	if (!FUNC5())
		FUNC8(&priv->lock, flags);

	FUNC3( dev->base_addr );

	minten = FUNC1( TLAN_NET_SIO_MINTEN, sio );
	if ( minten )
		FUNC0( TLAN_NET_SIO_MINTEN, sio );

	FUNC2( dev->base_addr, 0x1, 2 );	/* Start ( 01b ) */
	FUNC2( dev->base_addr, 0x1, 2 );	/* Write ( 01b ) */
	FUNC2( dev->base_addr, phy, 5 );	/* Device #      */
	FUNC2( dev->base_addr, reg, 5 );	/* Register #    */

	FUNC2( dev->base_addr, 0x2, 2 );	/* Send ACK */
	FUNC2( dev->base_addr, val, 16 );	/* Send Data */

	FUNC0( TLAN_NET_SIO_MCLK, sio );	/* Idle cycle */
	FUNC4( TLAN_NET_SIO_MCLK, sio );

	if ( minten )
		FUNC4( TLAN_NET_SIO_MINTEN, sio );

	if (!FUNC5())
		FUNC9(&priv->lock, flags);

}