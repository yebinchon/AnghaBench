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
typedef  int u32 ;
typedef  int /*<<< orphan*/  ce ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 

void FUNC2(u32 word)
{
	u8 ce[12];

	FUNC0(ce, 0, sizeof(ce));
	ce[3] = 0x4a;
	ce[7] = 0x01;
	ce[8] = word >> 24;
	ce[9] = word >> 16;
	ce[10] = word >> 8;
	ce[11] = word;
	FUNC1(ce, NULL);
}