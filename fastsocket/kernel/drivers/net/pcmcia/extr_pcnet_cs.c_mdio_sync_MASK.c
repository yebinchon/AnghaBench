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

/* Variables and functions */
 int MDIO_DATA_WRITE1 ; 
 int MDIO_MASK ; 
 int MDIO_SHIFT_CLK ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int addr)
{
    int bits, mask = FUNC0(addr) & MDIO_MASK;
    for (bits = 0; bits < 32; bits++) {
	FUNC1(mask | MDIO_DATA_WRITE1, addr);
	FUNC1(mask | MDIO_DATA_WRITE1 | MDIO_SHIFT_CLK, addr);
    }
}