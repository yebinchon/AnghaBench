#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
struct e1000_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_3__ {int vendor; int device; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ e1000_nvm_eeprom_spi ; 
 int FUNC0 (struct e1000_hw*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 struct e1000_adapter* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev,
			    struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct e1000_adapter *adapter = FUNC6(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u16 *eeprom_buff;
	int first_word;
	int last_word;
	int ret_val = 0;
	u16 i;

	if (eeprom->len == 0)
		return -EINVAL;

	eeprom->magic = adapter->pdev->vendor | (adapter->pdev->device << 16);

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;

	eeprom_buff = FUNC2(sizeof(u16) *
			(last_word - first_word + 1), GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	if (hw->nvm.type == e1000_nvm_eeprom_spi) {
		ret_val = FUNC0(hw, first_word,
					 last_word - first_word + 1,
					 eeprom_buff);
	} else {
		for (i = 0; i < last_word - first_word + 1; i++) {
			ret_val = FUNC0(hw, first_word + i, 1,
						      &eeprom_buff[i]);
			if (ret_val)
				break;
		}
	}

	if (ret_val) {
		/* a read error occurred, throw away the result */
		FUNC5(eeprom_buff, 0xff, sizeof(u16) *
		       (last_word - first_word + 1));
	} else {
		/* Device's eeprom is always little-endian, word addressable */
		for (i = 0; i < last_word - first_word + 1; i++)
			FUNC3(&eeprom_buff[i]);
	}

	FUNC4(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
	FUNC1(eeprom_buff);

	return ret_val;
}