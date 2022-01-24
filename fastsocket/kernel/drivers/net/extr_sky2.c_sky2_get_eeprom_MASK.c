#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sky2_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  magic; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_CAP_ID_VPD ; 
 int /*<<< orphan*/  SKY2_EEPROM_MAGIC ; 
 struct sky2_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_eeprom *eeprom,
			   u8 *data)
{
	struct sky2_port *sky2 = FUNC0(dev);
	int cap = FUNC1(sky2->hw->pdev, PCI_CAP_ID_VPD);

	if (!cap)
		return -EINVAL;

	eeprom->magic = SKY2_EEPROM_MAGIC;

	return FUNC2(sky2->hw, cap, data, eeprom->offset, eeprom->len);
}