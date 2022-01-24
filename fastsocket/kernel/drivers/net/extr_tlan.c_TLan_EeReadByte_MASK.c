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
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int /*<<< orphan*/  TLAN_EEPROM_ACK ; 
 int /*<<< orphan*/  TLAN_EEPROM_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6( struct net_device *dev, u8 ee_addr, u8 *data )
{
	int err;
	TLanPrivateInfo *priv = FUNC3(dev);
	unsigned long flags = 0;
	int ret=0;

	FUNC4(&priv->lock, flags);

	FUNC2( dev->base_addr );
	err = FUNC1( dev->base_addr, 0xA0, TLAN_EEPROM_ACK );
	if (err)
	{
		ret=1;
		goto fail;
	}
	err = FUNC1( dev->base_addr, ee_addr, TLAN_EEPROM_ACK );
	if (err)
	{
		ret=2;
		goto fail;
	}
	FUNC2( dev->base_addr );
	err = FUNC1( dev->base_addr, 0xA1, TLAN_EEPROM_ACK );
	if (err)
	{
		ret=3;
		goto fail;
	}
	FUNC0( dev->base_addr, data, TLAN_EEPROM_STOP );
fail:
	FUNC5(&priv->lock, flags);

	return ret;

}