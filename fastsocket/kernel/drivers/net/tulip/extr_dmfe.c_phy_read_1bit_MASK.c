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

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3(unsigned long ioaddr)
{
	u16 phy_data;

	FUNC1(0x50000, ioaddr);
	FUNC2(1);
	phy_data = ( FUNC0(ioaddr) >> 19 ) & 0x1;
	FUNC1(0x40000, ioaddr);
	FUNC2(1);

	return phy_data;
}