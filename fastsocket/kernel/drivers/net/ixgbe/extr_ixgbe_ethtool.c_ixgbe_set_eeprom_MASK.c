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
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int,int*) ;int (* write_buffer ) (struct ixgbe_hw*,int,int,int*) ;int /*<<< orphan*/  (* update_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {int vendor_id; int device_id; TYPE_2__ eeprom; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct ixgbe_hw*,int,int*) ; 
 int FUNC7 (struct ixgbe_hw*,int,int*) ; 
 int FUNC8 (struct ixgbe_hw*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
			    struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct ixgbe_adapter *adapter = FUNC5(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	u16 *eeprom_buff;
	void *ptr;
	int max_len, first_word, last_word, ret_val = 0;
	u16 i;

	if (eeprom->len == 0)
		return -EINVAL;

	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
		return -EINVAL;

	max_len = hw->eeprom.word_size * 2;

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
	eeprom_buff = FUNC2(max_len, GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	ptr = eeprom_buff;

	if (eeprom->offset & 1) {
		/*
		 * need read/modify/write of first changed EEPROM word
		 * only the second byte of the word is being modified
		 */
		ret_val = hw->eeprom.ops.read(hw, first_word, &eeprom_buff[0]);
		if (ret_val)
			goto err;

		ptr++;
	}
	if ((eeprom->offset + eeprom->len) & 1) {
		/*
		 * need read/modify/write of last changed EEPROM word
		 * only the first byte of the word is being modified
		 */
		ret_val = hw->eeprom.ops.read(hw, last_word,
					  &eeprom_buff[last_word - first_word]);
		if (ret_val)
			goto err;
	}

	/* Device's eeprom is always little-endian, word addressable */
	for (i = 0; i < last_word - first_word + 1; i++)
		FUNC3(&eeprom_buff[i]);

	FUNC4(ptr, bytes, eeprom->len);

	for (i = 0; i < last_word - first_word + 1; i++)
		FUNC0(&eeprom_buff[i]);

	ret_val = hw->eeprom.ops.write_buffer(hw, first_word,
					      last_word - first_word + 1,
					      eeprom_buff);

	/* Update the checksum */
	if (ret_val == 0)
		hw->eeprom.ops.update_checksum(hw);

err:
	FUNC1(eeprom_buff);
	return ret_val;
}