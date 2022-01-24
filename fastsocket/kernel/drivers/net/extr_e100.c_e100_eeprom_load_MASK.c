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
typedef  int u16 ;
struct nic {int eeprom_wc; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * eeprom; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*,int*,int) ; 
 int /*<<< orphan*/  eeprom_bad_csum_allow ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC4(struct nic *nic)
{
	u16 addr, addr_len = 8, checksum = 0;

	/* Try reading with an 8-bit addr len to discover actual addr len */
	FUNC1(nic, &addr_len, 0);
	nic->eeprom_wc = 1 << addr_len;

	for (addr = 0; addr < nic->eeprom_wc; addr++) {
		nic->eeprom[addr] = FUNC1(nic, &addr_len, addr);
		if (addr < nic->eeprom_wc - 1)
			checksum += FUNC2(nic->eeprom[addr]);
	}

	/* The checksum, stored in the last word, is calculated such that
	 * the sum of words should be 0xBABA */
	if (FUNC0(0xBABA - checksum) != nic->eeprom[nic->eeprom_wc - 1]) {
		FUNC3(nic, probe, nic->netdev, "EEPROM corrupted\n");
		if (!eeprom_bad_csum_allow)
			return -EAGAIN;
	}

	return 0;
}