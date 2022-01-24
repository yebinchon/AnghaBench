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
struct rt2x00lib_crypto {scalar_t__ cmd; int bssidx; int /*<<< orphan*/  cipher; int /*<<< orphan*/  address; int /*<<< orphan*/  rx_mic; int /*<<< orphan*/  tx_mic; int /*<<< orphan*/  key; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {int hw_key_idx; int /*<<< orphan*/  flags; } ;
struct hw_pairwise_ta_entry {int /*<<< orphan*/  cipher; struct hw_pairwise_ta_entry* rx_mic; struct hw_pairwise_ta_entry* tx_mic; struct hw_pairwise_ta_entry* key; } ;
struct hw_key_entry {int /*<<< orphan*/  cipher; struct hw_key_entry* rx_mic; struct hw_key_entry* tx_mic; struct hw_key_entry* key; } ;
typedef  int /*<<< orphan*/  key_entry ;
typedef  int /*<<< orphan*/  addr_entry ;

/* Variables and functions */
 scalar_t__ DISABLE_KEY ; 
 int ENOSPC ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_KEY_FLAG_GENERATE_IV ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SEC_CSR2 ; 
 int /*<<< orphan*/  SEC_CSR3 ; 
 int /*<<< orphan*/  SEC_CSR4 ; 
 scalar_t__ SET_KEY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hw_pairwise_ta_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hw_pairwise_ta_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,struct hw_pairwise_ta_entry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct rt2x00_dev *rt2x00dev,
				       struct rt2x00lib_crypto *crypto,
				       struct ieee80211_key_conf *key)
{
	struct hw_pairwise_ta_entry addr_entry;
	struct hw_key_entry key_entry;
	u32 mask;
	u32 reg;

	if (crypto->cmd == SET_KEY) {
		/*
		 * rt2x00lib can't determine the correct free
		 * key_idx for pairwise keys. We have 2 registers
		 * with key valid bits. The goal is simple: read
		 * the first register. If that is full, move to
		 * the next register.
		 * When both registers are full, we drop the key.
		 * Otherwise, we use the first invalid entry.
		 */
		FUNC6(rt2x00dev, SEC_CSR2, &reg);
		if (reg && reg == ~0) {
			key->hw_key_idx = 32;
			FUNC6(rt2x00dev, SEC_CSR3, &reg);
			if (reg && reg == ~0)
				return -ENOSPC;
		}

		key->hw_key_idx += reg ? FUNC2(reg) : 0;

		/*
		 * Upload key to hardware
		 */
		FUNC3(key_entry.key, crypto->key,
		       sizeof(key_entry.key));
		FUNC3(key_entry.tx_mic, crypto->tx_mic,
		       sizeof(key_entry.tx_mic));
		FUNC3(key_entry.rx_mic, crypto->rx_mic,
		       sizeof(key_entry.rx_mic));

		FUNC4(&addr_entry, 0, sizeof(addr_entry));
		FUNC3(&addr_entry, crypto->address, ETH_ALEN);
		addr_entry.cipher = crypto->cipher;

		reg = FUNC0(key->hw_key_idx);
		FUNC5(rt2x00dev, reg,
					       &key_entry, sizeof(key_entry));

		reg = FUNC1(key->hw_key_idx);
		FUNC5(rt2x00dev, reg,
					       &addr_entry, sizeof(addr_entry));

		/*
		 * Enable pairwise lookup table for given BSS idx.
		 * Without this, received frames will not be decrypted
		 * by the hardware.
		 */
		FUNC6(rt2x00dev, SEC_CSR4, &reg);
		reg |= (1 << crypto->bssidx);
		FUNC7(rt2x00dev, SEC_CSR4, reg);

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
	 * SEC_CSR2 and SEC_CSR3 contain only single-bit fields to indicate
	 * a particular key is valid. Because using the FIELD32()
	 * defines directly will cause a lot of overhead, we use
	 * a calculation to determine the correct bit directly.
	 */
	if (key->hw_key_idx < 32) {
		mask = 1 << key->hw_key_idx;

		FUNC6(rt2x00dev, SEC_CSR2, &reg);
		if (crypto->cmd == SET_KEY)
			reg |= mask;
		else if (crypto->cmd == DISABLE_KEY)
			reg &= ~mask;
		FUNC7(rt2x00dev, SEC_CSR2, reg);
	} else {
		mask = 1 << (key->hw_key_idx - 32);

		FUNC6(rt2x00dev, SEC_CSR3, &reg);
		if (crypto->cmd == SET_KEY)
			reg |= mask;
		else if (crypto->cmd == DISABLE_KEY)
			reg &= ~mask;
		FUNC7(rt2x00dev, SEC_CSR3, reg);
	}

	return 0;
}