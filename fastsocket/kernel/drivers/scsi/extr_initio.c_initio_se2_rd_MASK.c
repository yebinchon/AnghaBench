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
typedef  int u16 ;

/* Variables and functions */
 int SE2CLK ; 
 int SE2CS ; 
 int SE2DI ; 
 scalar_t__ TUL_NVRAM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u16 FUNC4(unsigned long base, u8 addr)
{
	u8 instr, rb;
	u16 val = 0;
	int i;

	instr = (u8) (addr | 0x80);
	FUNC1(base, instr);	/* READ INSTR */

	for (i = 15; i >= 0; i--) {
		FUNC2(SE2CS | SE2CLK, base + TUL_NVRAM);	/* +CLK */
		FUNC3(30);
		FUNC2(SE2CS, base + TUL_NVRAM);		/* -CLK */

		/* sample data after the following edge of clock  */
		rb = FUNC0(base + TUL_NVRAM);
		rb &= SE2DI;
		val += (rb << i);
		FUNC3(30);	/* 6/20/95 */
	}

	FUNC2(0, base + TUL_NVRAM);		/* no chip select */
	FUNC3(30);
	return val;
}