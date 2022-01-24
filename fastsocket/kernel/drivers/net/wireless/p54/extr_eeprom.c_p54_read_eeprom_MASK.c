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
struct p54_common {int fw_var; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 size_t EEPROM_READBACK_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t,size_t) ; 
 int FUNC3 (struct p54_common*,void*,size_t,size_t) ; 
 int FUNC4 (struct ieee80211_hw*,void*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ieee80211_hw *dev)
{
	struct p54_common *priv = dev->priv;
	size_t eeprom_size = 0x2020, offset = 0, blocksize, maxblocksize;
	int ret = -ENOMEM;
	void *eeprom;

	maxblocksize = EEPROM_READBACK_LEN;
	if (priv->fw_var >= 0x509)
		maxblocksize -= 0xc;
	else
		maxblocksize -= 0x4;

	eeprom = FUNC1(eeprom_size, GFP_KERNEL);
	if (FUNC5(!eeprom))
		goto free;

	while (eeprom_size) {
		blocksize = FUNC2(eeprom_size, maxblocksize);
		ret = FUNC3(priv, eeprom + offset,
					  offset, blocksize);
		if (FUNC5(ret))
			goto free;

		offset += blocksize;
		eeprom_size -= blocksize;
	}

	ret = FUNC4(dev, eeprom, offset);
free:
	FUNC0(eeprom);
	return ret;
}