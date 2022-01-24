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
struct nic {int eeprom_wc; int /*<<< orphan*/ * eeprom; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nic*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nic *nic, u16 start, u16 count)
{
	u16 addr, addr_len = 8, checksum = 0;

	/* Try reading with an 8-bit addr len to discover actual addr len */
	FUNC1(nic, &addr_len, 0);
	nic->eeprom_wc = 1 << addr_len;

	if (start + count >= nic->eeprom_wc)
		return -EINVAL;

	for (addr = start; addr < start + count; addr++)
		FUNC2(nic, addr_len, addr, nic->eeprom[addr]);

	/* The checksum, stored in the last word, is calculated such that
	 * the sum of words should be 0xBABA */
	for (addr = 0; addr < nic->eeprom_wc - 1; addr++)
		checksum += FUNC3(nic->eeprom[addr]);
	nic->eeprom[nic->eeprom_wc - 1] = FUNC0(0xBABA - checksum);
	FUNC2(nic, addr_len, nic->eeprom_wc - 1,
		nic->eeprom[nic->eeprom_wc - 1]);

	return 0;
}