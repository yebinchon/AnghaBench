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
struct nic {scalar_t__ eeprom; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ magic; size_t offset; int len; } ;

/* Variables and functions */
 scalar_t__ E100_EEPROM_MAGIC ; 
 int EINVAL ; 
 int FUNC0 (struct nic*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nic* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
	struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct nic *nic = FUNC2(netdev);

	if (eeprom->magic != E100_EEPROM_MAGIC)
		return -EINVAL;

	FUNC1(&((u8 *)nic->eeprom)[eeprom->offset], bytes, eeprom->len);

	return FUNC0(nic, eeprom->offset >> 1,
		(eeprom->len >> 1) + 1);
}