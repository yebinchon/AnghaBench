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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int FALSE ; 
 int TLAN_DIO_ADR ; 
 int TLAN_DIO_DATA ; 
 int TLAN_NET_SIO ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MCLK ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MDATA ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MINTEN ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MTXEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10( struct net_device *dev, u16 phy, u16 reg, u16 *val )
{
	u8	nack;
	u16	sio, tmp;
 	u32	i;
	int	err;
	int	minten;
	TLanPrivateInfo *priv = FUNC6(dev);
	unsigned long flags = 0;

	err = FALSE;
	FUNC7(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
	sio = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;

	if (!FUNC5())
		FUNC8(&priv->lock, flags);

	FUNC3(dev->base_addr);

	minten = FUNC1( TLAN_NET_SIO_MINTEN, sio );
	if ( minten )
		FUNC0(TLAN_NET_SIO_MINTEN, sio);

	FUNC2( dev->base_addr, 0x1, 2 );	/* Start ( 01b ) */
	FUNC2( dev->base_addr, 0x2, 2 );	/* Read  ( 10b ) */
	FUNC2( dev->base_addr, phy, 5 );	/* Device #      */
	FUNC2( dev->base_addr, reg, 5 );	/* Register #    */


	FUNC0(TLAN_NET_SIO_MTXEN, sio);		/* Change direction */

	FUNC0(TLAN_NET_SIO_MCLK, sio);		/* Clock Idle bit */
	FUNC4(TLAN_NET_SIO_MCLK, sio);
	FUNC0(TLAN_NET_SIO_MCLK, sio);		/* Wait 300ns */

	nack = FUNC1(TLAN_NET_SIO_MDATA, sio);	/* Check for ACK */
	FUNC4(TLAN_NET_SIO_MCLK, sio);		/* Finish ACK */
	if (nack) {					/* No ACK, so fake it */
		for (i = 0; i < 16; i++) {
			FUNC0(TLAN_NET_SIO_MCLK, sio);
			FUNC4(TLAN_NET_SIO_MCLK, sio);
		}
		tmp = 0xffff;
		err = TRUE;
	} else {					/* ACK, so read data */
		for (tmp = 0, i = 0x8000; i; i >>= 1) {
			FUNC0(TLAN_NET_SIO_MCLK, sio);
			if (FUNC1(TLAN_NET_SIO_MDATA, sio))
				tmp |= i;
			FUNC4(TLAN_NET_SIO_MCLK, sio);
		}
	}


	FUNC0(TLAN_NET_SIO_MCLK, sio);		/* Idle cycle */
	FUNC4(TLAN_NET_SIO_MCLK, sio);

	if ( minten )
		FUNC4(TLAN_NET_SIO_MINTEN, sio);

	*val = tmp;

	if (!FUNC5())
		FUNC9(&priv->lock, flags);

	return err;

}