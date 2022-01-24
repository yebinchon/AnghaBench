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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u16 FUNC2(const u32 *buffer, size_t length)
{
	int shift;
	u32 data;
	u16 sum, crc = 0;

	for (; length; length--) {
		data = FUNC0(*buffer);
		buffer++;
		for (shift = 28; shift >= 0; shift -= 4 ) {
			sum = ((crc >> 12) ^ (data >> shift)) & 0xf;
			crc = (crc << 4) ^ (sum << 12) ^ (sum << 5) ^ (sum);
		}
		crc &= 0xffff;
	}

	return FUNC1(crc);
}