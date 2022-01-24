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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int vendor_id; int device_id; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;
struct ethtool_eeprom {int len; int magic; int offset; } ;

/* Variables and functions */
 int EEPROM_CHECKSUM_REG ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ixgb_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,int) ; 
 struct ixgb_adapter* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct net_device *netdev,
		  struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct ixgb_adapter *adapter = FUNC7(netdev);
	struct ixgb_hw *hw = &adapter->hw;
	u16 *eeprom_buff;
	void *ptr;
	int max_len, first_word, last_word;
	u16 i;

	if (eeprom->len == 0)
		return -EINVAL;

	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
		return -EFAULT;

	max_len = FUNC0(netdev);

	if (eeprom->offset > eeprom->offset + eeprom->len)
		return -EINVAL;

	if ((eeprom->offset + eeprom->len) > max_len)
		eeprom->len = (max_len - eeprom->offset);

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
	eeprom_buff = FUNC5(max_len, GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	ptr = (void *)eeprom_buff;

	if (eeprom->offset & 1) {
		/* need read/modify/write of first changed EEPROM word */
		/* only the second byte of the word is being modified */
		eeprom_buff[0] = FUNC1(hw, first_word);
		ptr++;
	}
	if ((eeprom->offset + eeprom->len) & 1) {
		/* need read/modify/write of last changed EEPROM word */
		/* only the first byte of the word is being modified */
		eeprom_buff[last_word - first_word]
			= FUNC1(hw, last_word);
	}

	FUNC6(ptr, bytes, eeprom->len);
	for (i = 0; i <= (last_word - first_word); i++)
		FUNC3(hw, first_word + i, eeprom_buff[i]);

	/* Update the checksum over the first part of the EEPROM if needed */
	if (first_word <= EEPROM_CHECKSUM_REG)
		FUNC2(hw);

	FUNC4(eeprom_buff);
	return 0;
}