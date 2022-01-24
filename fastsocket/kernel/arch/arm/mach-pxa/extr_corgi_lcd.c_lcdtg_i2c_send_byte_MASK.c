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

/* Variables and functions */
 int POWER0_COM_DOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u8 base, u8 data)
{
	int i;
	for (i = 0; i < 8; i++) {
		if (data & 0x80)
			FUNC0(base | POWER0_COM_DOUT);
		else
			FUNC0(base);
		data <<= 1;
	}
}