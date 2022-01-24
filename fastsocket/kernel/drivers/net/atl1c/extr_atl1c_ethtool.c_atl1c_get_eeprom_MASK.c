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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;
struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {TYPE_1__* pdev; struct atl1c_hw hw; } ;
struct TYPE_2__ {int vendor; int device; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atl1c_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
		struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct atl1c_adapter *adapter = FUNC5(netdev);
	struct atl1c_hw *hw = &adapter->hw;
	u32 *eeprom_buff;
	int first_dword, last_dword;
	int ret_val = 0;
	int i;

	if (eeprom->len == 0)
		return -EINVAL;

	if (!FUNC0(hw)) /* not exist */
		return -EINVAL;

	eeprom->magic = adapter->pdev->vendor |
			(adapter->pdev->device << 16);

	first_dword = eeprom->offset >> 2;
	last_dword = (eeprom->offset + eeprom->len - 1) >> 2;

	eeprom_buff = FUNC3(sizeof(u32) *
			(last_dword - first_dword + 1), GFP_KERNEL);
	if (eeprom_buff == NULL)
		return -ENOMEM;

	for (i = first_dword; i < last_dword; i++) {
		if (!FUNC1(hw, i * 4, &(eeprom_buff[i-first_dword]))) {
			FUNC2(eeprom_buff);
			return -EIO;
		}
	}

	FUNC4(bytes, (u8 *)eeprom_buff + (eeprom->offset & 3),
			eeprom->len);
	FUNC2(eeprom_buff);

	return ret_val;
	return 0;
}