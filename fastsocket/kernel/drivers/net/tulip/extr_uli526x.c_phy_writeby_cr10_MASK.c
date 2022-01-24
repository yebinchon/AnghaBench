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
typedef  unsigned long u8 ;
typedef  unsigned long u16 ;

/* Variables and functions */
 unsigned long DCR10 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(unsigned long iobase, u8 phy_addr, u8 offset, u16 phy_data)
{
	unsigned long ioaddr,cr10_value;

	ioaddr = iobase + DCR10;
	cr10_value = phy_addr;
	cr10_value = (cr10_value<<5) + offset;
	cr10_value = (cr10_value<<16) + 0x04000000 + phy_data;
	FUNC0(cr10_value,ioaddr);
	FUNC1(1);
}