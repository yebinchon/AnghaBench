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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PLANETCORE_KEY_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int* mac_table ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 

void FUNC2(const char *table)
{
	u8 addr[4][6];
	u64 int_addr;
	u32 i;
	int j;

	if (!FUNC1(table, PLANETCORE_KEY_MAC_ADDR, &int_addr))
		return;

	for (i = 0; i < 4; i++) {
		u64 this_dev_addr = (int_addr & ~0x000000c00000) |
		                    mac_table[i];

		for (j = 5; j >= 0; j--) {
			addr[i][j] = this_dev_addr & 0xff;
			this_dev_addr >>= 8;
		}

		FUNC0(i, addr[i]);
	}
}