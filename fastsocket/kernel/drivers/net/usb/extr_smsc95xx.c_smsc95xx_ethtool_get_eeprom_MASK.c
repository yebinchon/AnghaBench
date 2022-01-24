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
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAN95XX_EEPROM_MAGIC ; 
 struct usbnet* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				       struct ethtool_eeprom *ee, u8 *data)
{
	struct usbnet *dev = FUNC0(netdev);

	ee->magic = LAN95XX_EEPROM_MAGIC;

	return FUNC1(dev, ee->offset, ee->len, data);
}