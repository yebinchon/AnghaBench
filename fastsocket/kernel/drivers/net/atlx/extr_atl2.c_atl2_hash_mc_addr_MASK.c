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
typedef  int u32 ;
struct atl2_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC1(struct atl2_hw *hw, u8 *mc_addr)
{
	u32 crc32, value;
	int i;

	value = 0;
	crc32 = FUNC0(6, mc_addr);

	for (i = 0; i < 32; i++)
		value |= (((crc32 >> i) & 1) << (31 - i));

	return value;
}