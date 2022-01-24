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
typedef  int u32 ;
struct rt2x00lib_crypto {scalar_t__ cmd; int bssidx; int /*<<< orphan*/  cipher; int /*<<< orphan*/  rx_mic; int /*<<< orphan*/  tx_mic; int /*<<< orphan*/  key; } ;
struct rt2x00_field32 {int bit_offset; int bit_mask; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {int hw_key_idx; int /*<<< orphan*/  flags; } ;
struct hw_key_entry {int /*<<< orphan*/  rx_mic; int /*<<< orphan*/  tx_mic; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  key_entry ;

/* Variables and functions */
 scalar_t__ DISABLE_KEY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IEEE80211_KEY_FLAG_GENERATE_IV ; 
 int /*<<< orphan*/  SEC_CSR0 ; 
 int /*<<< orphan*/  SEC_CSR1 ; 
 int /*<<< orphan*/  SEC_CSR5 ; 
 scalar_t__ SET_KEY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct rt2x00_field32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,struct hw_key_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev,
				     struct rt2x00lib_crypto *crypto,
				     struct ieee80211_key_conf *key)
{
	struct hw_key_entry key_entry;
	struct rt2x00_field32 field;
	u32 mask;
	u32 reg;

	if (crypto->cmd == SET_KEY) {
		/*
		 * rt2x00lib can't determine the correct free
		 * key_idx for shared keys. We have 1 register
		 * with key valid bits. The goal is simple, read
		 * the register, if that is full we have no slots
		 * left.
		 * Note that each BSS is allowed to have up to 4
		 * shared keys, so put a mask over the allowed
		 * entries.
		 */
		mask = (0xf << crypto->bssidx);

		FUNC5(rt2x00dev, SEC_CSR0, &reg);
		reg &= mask;

		if (reg && reg == mask)
			return -ENOSPC;

		key->hw_key_idx += reg ? FUNC1(reg) : 0;

		/*
		 * Upload key to hardware
		 */
		FUNC2(key_entry.key, crypto->key,
		       sizeof(key_entry.key));
		FUNC2(key_entry.tx_mic, crypto->tx_mic,
		       sizeof(key_entry.tx_mic));
		FUNC2(key_entry.rx_mic, crypto->rx_mic,
		       sizeof(key_entry.rx_mic));

		reg = FUNC0(key->hw_key_idx);
		FUNC4(rt2x00dev, reg,
					       &key_entry, sizeof(key_entry));

		/*
		 * The cipher types are stored over 2 registers.
		 * bssidx 0 and 1 keys are stored in SEC_CSR1 and
		 * bssidx 1 and 2 keys are stored in SEC_CSR5.
		 * Using the correct defines correctly will cause overhead,
		 * so just calculate the correct offset.
		 */
		if (key->hw_key_idx < 8) {
			field.bit_offset = (3 * key->hw_key_idx);
			field.bit_mask = 0x7 << field.bit_offset;

			FUNC5(rt2x00dev, SEC_CSR1, &reg);
			FUNC3(&reg, field, crypto->cipher);
			FUNC6(rt2x00dev, SEC_CSR1, reg);
		} else {
			field.bit_offset = (3 * (key->hw_key_idx - 8));
			field.bit_mask = 0x7 << field.bit_offset;

			FUNC5(rt2x00dev, SEC_CSR5, &reg);
			FUNC3(&reg, field, crypto->cipher);
			FUNC6(rt2x00dev, SEC_CSR5, reg);
		}

		/*
		 * The driver does not support the IV/EIV generation
		 * in hardware. However it doesn't support the IV/EIV
		 * inside the ieee80211 frame either, but requires it
		 * to be provided separately for the descriptor.
		 * rt2x00lib will cut the IV/EIV data out of all frames
		 * given to us by mac80211, but we must tell mac80211
		 * to generate the IV/EIV data.
		 */
		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
	}

	/*
	 * SEC_CSR0 contains only single-bit fields to indicate
	 * a particular key is valid. Because using the FIELD32()
	 * defines directly will cause a lot of overhead, we use
	 * a calculation to determine the correct bit directly.
	 */
	mask = 1 << key->hw_key_idx;

	FUNC5(rt2x00dev, SEC_CSR0, &reg);
	if (crypto->cmd == SET_KEY)
		reg |= mask;
	else if (crypto->cmd == DISABLE_KEY)
		reg &= ~mask;
	FUNC6(rt2x00dev, SEC_CSR0, reg);

	return 0;
}